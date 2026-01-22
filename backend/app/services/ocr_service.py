import cv2
import numpy as np
import pytesseract
from PIL import Image
import io
import re

async def process_document(file):
    contents = await file.read()

    image = Image.open(io.BytesIO(contents)).convert("RGB")
    image_np = np.array(image)

    gray = cv2.cvtColor(image_np, cv2.COLOR_BGR2GRAY)
    gray = cv2.threshold(gray, 150, 255, cv2.THRESH_BINARY)[1]

    text = pytesseract.image_to_string(gray)

    extracted = extract_entities(text)

    return {
        "document_type": "Unknown",
        "entities": extracted,
        "raw_text": text
    }

def extract_entities(text: str):
    invoice_no = re.search(r"INV[-\s]?\d+", text)
    date = re.search(r"\d{2}/\d{2}/\d{4}", text)
    amount = re.search(r"Rs\.?\s?\d+[,\d]*", text)

    return {
        "invoice_number": invoice_no.group() if invoice_no else None,
        "date": date.group() if date else None,
        "total_amount": amount.group() if amount else None
    }
