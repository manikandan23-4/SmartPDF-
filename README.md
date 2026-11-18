# 🚀 SmartPDF – NEXORA AI | Full-Stack Enterprise PDF Platform

> **A Career & Resume Showcase Project** combining **Python (FastAPI)**, **React.js**, **Tailwind CSS**, **SQL (SQLite / PostgreSQL ready)**, and **AI Assistants (ChatGPT & Claude)**.

---

## 🎨 Color Palette & Cinematic Theme
- **Black Red (`#080103` / `#0F0206` / `#19040A`)**: Ultra-dark carbon black with subtle crimson undertones for a deep cinematic ambiance.
- **Crimson Red (`#DC143C` / `#FF1744`)**: Electric crimson accentuating primary call-to-actions, borders, and active status states.
- **Champagne Yellow (`#F3E5AB` / `#FDF6E2` / `#DFB76C`)**: Luxurious champagne gold highlighting metric highlights, badges, and primary action buttons.
- **Cyber Electric Cyan & Neon Blue (`#00F2FE` / `#4FACFE`)**: Complementary luminous neon accents matching the warrior lightning background.
- **Custom Brand Logo**: Futuristic cyber shield integrating folded PDF geometry and a lightning energy core (`frontend/public/logo.svg`).
- **Cinematic Background Integration**: Seamless full-screen responsive integration of the user's warrior storm wallpaper with dark-red vignette and glassmorphism cards.

---

## 🛡️ Security & Strict User Isolation
1. **Password Security**: Argon2 / bcrypt adaptive salted hashing with 12 rounds. Plaintext passwords are never stored.
2. **JWT Authentication**: Secure Bearer tokens with 24-hour expiration and cryptographic verification.
3. **Login Rate Limiter**: Automatically throttles brute-force attempts per IP/username.
4. **Strict Multi-Tenant Privacy Isolation**:
   - Each registered user has an isolated file directory: `backend/storage/user_{id}/`.
   - **Recent Conversions & History**: User A **only** sees and accesses their own documents.
   - **Download Protection**: `/api/pdf/download/{file_id}` verifies that the file belongs to `current_user.id`. Any unauthorized access attempt by another account returns `403 Forbidden`.

---

## ⚡ PDF Engine Capabilities (11 Pro Tools)

| Tool | Technical Implementation | Output Format |
|---|---|---|
| **PDF to Word** | High-fidelity text extraction, headings & paragraph parsing via `pdf2docx` & `python-docx` | `.docx` |
| **PDF to Excel** | Structure and table grid parsing via `pymupdf` & `openpyxl` | `.xlsx` |
| **PDF to PowerPoint** | Widescreen 16:9 slide rendering and insertion via `python-pptx` | `.pptx` |
| **PDF to JPG / PNG** | High-res 200 DPI vector rendering with automatic multi-page `.zip` bundling | `.png` / `.jpg` / `.zip` |
| **Images to PDF** | Combines multi-image uploads (PNG/JPEG) into a unified crisp PDF document | `.pdf` |
| **PDF Compressor** | High, Medium, and Low compression with garbage collection & savings calculation | `.pdf` (Optimized) |
| **Increase PDF Size** | **Unlimited MB Target Scaling** (e.g. 5MB, 10MB, 50MB, 100MB+) via non-destructive high-density trailer streams | `.pdf` (Scaled) |
| **Merge PDFs** | Multi-file drag & drop combination into a single seamless document | `.pdf` (Merged) |
| **Split PDF** | Extracts custom page ranges (e.g., `1-3, 5, 8-10`) | `.pdf` (Split) |
| **Watermark & Rotate** | Rotates 90°, 180°, 270° + semi-transparent diagonal crimson text watermark | `.pdf` (Watermarked) |
| **Protect & Unlock** | AES-128 / AES-256 password encryption and decryption | `.pdf` (Encrypted) |

---

## 🤖 AI Integrations (ChatGPT & Claude)
- Direct integration links for **[ChatGPT](https://chatgpt.com)** and **[Claude AI](https://claude.ai)**.
- Built-in prompt template drawer:
  1. *Executive Document Summarization*
  2. *Tabular Metrics & Financial Extraction*
  3. *Professional Proofreading & Formatting*
  4. *PDF to Code / SQL Schema Converter*

---

## 📁 Project Architecture
```
resume-project/
├── backend/
│   ├── main.py              # FastAPI application, auth & PDF tool routes
│   ├── auth.py              # Bcrypt hashing, JWT generation, rate limiting
│   ├── database.py          # SQLite / SQLAlchemy models (User, ProcessedFile)
│   ├── pdf_tools.py         # Complete Python processing engines
│   ├── requirements.txt     # Python dependencies
│   └── storage/             # Isolated per-user file vaults
│
├── frontend/
│   ├── index.html           # Cinematic typography & metadata
│   ├── vite.config.js       # Vite build & API proxy configuration
│   ├── tailwind.config.js   # Black-red, crimson, champagne color definitions
│   ├── public/
│   │   ├── logo.svg         # Custom cyber-shield PDF logo
│   │   └── assets/
│   │       └── hero-bg.jpg  # User's lightning warrior background
│   └── src/
│       ├── main.jsx
│       ├── App.jsx          # Background overlay, session & route manager
│       ├── index.css        # Glassmorphism & custom glowing scrollbars
│       └── components/
│           ├── Navbar.jsx           # Brand header, user badge, AI trigger
│           ├── AuthModal.jsx        # Glassmorphism login & register forms
│           ├── Dashboard.jsx        # 11 PDF tools, drag-drop workbench, isolated history
│           └── AiAssistantModal.jsx # ChatGPT & Claude quick links & prompt copy
│
├── run_backend.bat          # 1-Click backend launcher
├── run_frontend.bat         # 1-Click frontend launcher
└── start_project.bat        # 1-Click dual server launcher
```

---

## 🚀 Quickstart Guide

### 1. Launch All Servers
Simply double-click:
```bash
start_project.bat
```
Or start them individually:

**Backend:**
```bash
cd backend
.\.venv\Scripts\activate
uvicorn main:app --host 127.0.0.1 --port 8000 --reload
```
Interactive API Swagger Docs: `http://127.0.0.1:8000/docs`

**Frontend:**
```bash
cd frontend
npm run dev
```
Open in browser: `http://localhost:5173`

---

## 💼 Resume / Portfolio Highlights
- **Full-Stack Proficiency**: Developed a decoupled, scalable architecture with Python (FastAPI) and modern React.js.
- **Applied Computer Science in Document Systems**: Engineered vector-level manipulation, page rasterization, and stream deflation using `PyMuPDF` and `pypdf`.
- **Portal Compliance Engineering**: Created custom stream padding algorithms to fulfill strict minimum file size thresholds on enterprise job portals.
- **Enterprise Security**: Implemented salted bcrypt hashing, JWT authentication guards, rate limiting, and strict multi-tenant access control lists (ACLs).
