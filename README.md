# smart-doc-scanner
A smart document scanning mobile app built with Flutter and FastAPI that extracts structured information from images and PDFs using OCR and NLP, featuring offline caching and MVVM architecture.

# AI Document Scanner – Flutter & FastAPI

A full-stack mobile application built with **Flutter** and **FastAPI** that allows users to scan images and documents, send them to a backend OCR and NLP pipeline, and receive structured, AI-powered insights.  
The project demonstrates clean mobile architecture (MVVM), backend API design, and practical AI integration for real-world document intelligence use cases.

---

## 🚀 Features

- 📷 Capture images using camera or upload from gallery  
- 📄 Upload images and PDFs for processing  
- 🧠 OCR pipeline using Tesseract with OpenCV preprocessing  
- 🔍 NLP-based entity extraction using spaCy and rule-based patterns  
- 📊 Structured JSON output (key fields, metadata, raw text)  
- 📱 Clean Flutter UI with MVVM architecture  
- 💾 Offline caching of previously processed documents  
- ⚡ FastAPI backend with RESTful endpoints  
- 🛠️ Scalable and modular project structure  

---

## 🧠 System Architecture

Flutter Mobile App
|
| (Image / PDF Upload)
v
FastAPI Backend
|
|--> Image Preprocessing (OpenCV)
|--> OCR (Tesseract)
|--> NLP & Entity Extraction (spaCy / Regex)
|
v
Structured JSON Response
|
v
Flutter UI + Offline Storage

---

## 🛠️ Tech Stack

### Mobile (Frontend)
- Flutter (Dart)
- MVVM Architecture
- Provider / Riverpod (state management)
- HTTP / Dio
- Hive / SharedPreferences (offline storage)

### Backend
- FastAPI (Python)
- OpenCV (image preprocessing)
- Tesseract OCR
- spaCy (NLP)
- Regex & fuzzy matching
- SQLite / PostgreSQL

### Tools & Platforms
- Git & GitHub
- VS Code / Android Studio
- Postman (API testing)

---

## 📂 Project Structure

ai-document-scanner-flutter/
│
├── mobile/
│ └── lib/
│ ├── core/
│ ├── features/
│ │ ├── upload/
│ │ ├── results/
│ │ └── history/
│ └── main.dart
│
├── backend/
│ ├── app/
│ │ ├── api/
│ │ ├── services/
│ │ ├── ocr/
│ │ └── nlp/
│ ├── main.py
│ └── requirements.txt
│
├── docs/
│ └── architecture.png
│
└── README.md

---

## 📄 Example API Response

```json
{
  "document_type": "Invoice",
  "entities": {
    "invoice_number": "INV-2048",
    "date": "2025-06-12",
    "total_amount": "Rs. 18,500",
    "vendor": "ABC Textiles"
  },
  "raw_text": "..."
}
⚙️ Getting Started
Backend Setup
cd backend
python -m venv venv
source venv/bin/activate   # On Windows: venv\Scripts\activate
pip install -r requirements.txt
uvicorn main:app --reload
Backend will be available at:
http://localhost:8000
API Docs:
http://localhost:8000/docs
Mobile App Setup
cd mobile
flutter pub get
flutter run
Make sure an emulator or physical device is connected.
🎯 Use Cases
Invoice and receipt processing
Medical and clinical document analysis
Textile and manufacturing document extraction
Academic and administrative paperwork
Automated data entry workflows
🧪 Future Improvements
Multi-language OCR (English + Urdu)
Text highlighting and bounding boxes
Export results to PDF / Excel
Authentication and user profiles
Cloud deployment (Azure / AWS)
Unit and integration tests
🔒 Security & Privacy
No document data is stored permanently on the server
Local caching is handled securely on-device
Designed with privacy-aware AI usage in mind
👨‍💻 Author
Arqam Altaf Ur Rehman Niaz
Computer Science Graduate | Associate Software Engineer – AI/ML
📍 Lahore, Pakistan
📧 arqamaltaf@gmail.com

