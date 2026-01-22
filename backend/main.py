from fastapi import FastAPI, File, UploadFile
from app.services.ocr_service import process_document

app = FastAPI(title="AI Document Scanner API")

@app.post("/process")
async def process_file(file: UploadFile = File(...)):
    result = await process_document(file)
    return result
