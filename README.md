# 🔥 Firebase Resume

Personal resume website hosted on **Firebase Hosting**.

---

## 🌐 Live Site

- 🚀 [https://aman-kumar-cv.web.app](https://aman-kumar-cv.web.app)
- 🔗 [https://aman-kumar-cv.firebaseapp.com](https://aman-kumar-cv.firebaseapp.com)

---

## 🛠️ Tech Stack

- 🔥 Firebase Hosting
- 📄 Static HTML in `public/`

---

## 📁 Project Structure

```text
FirebaseResume/
│
├── public/
│   ├── index.html
│   └── Aman_Kumar_Mishra_Resume.pdf
│
├── firebase.json
├── .firebaserc
└── README.md
```

### 📄 Files

| File | Description |
| --- | --- |
| `public/index.html` | Main resume page |
| `public/Aman_Kumar_Mishra_Resume.pdf` | Downloadable PDF resume |
| `firebase.json` | Firebase Hosting configuration |
| `.firebaserc` | Firebase project alias mapping |

---

## 📋 Prerequisites

Make sure the following are installed:

- 🟢 Node.js (LTS recommended)
- 🔥 Firebase CLI

---

## 📦 Install Firebase CLI

Install Firebase CLI globally:

```bash
npm install -g firebase-tools
```

---

## 💻 Local Development

From project root:

### 🔐 Login to Firebase

```bash
firebase login
```

### 🎯 Select Firebase Project

```bash
firebase use aman-kumar-cv
```

### ▶️ Start Local Hosting Emulator

```bash
firebase emulators:start --only hosting
```

Open the local URL shown by the CLI.

Usually:

```text
<http://localhost:5000>
```

---

## 🚀 Deploy

Deploy the website to Firebase Hosting:

```bash
firebase deploy --only hosting
```

After deployment, changes are live at:

- 🌐 [https://aman-kumar-cv.web.app](https://aman-kumar-cv.web.app)

---

## 🔄 Update Resume From Another PC

Clone the repository:

```bash
git clone https://github.com/amankmishrasfdc/FirebaseResume.git
```

Navigate into project:

```bash
cd FirebaseResume
```

Login:

```bash
firebase login
```

Select Firebase project:

```bash
firebase use aman-kumar-cv
```

---

## ✏️ Update Resume Content

Update resume page:

```text
public/index.html
```

Replace resume PDF:

```text
public/Aman_Kumar_Mishra_Resume.pdf
```

---

## 🚀 Deploy Updates

Deploy changes:

```bash
firebase deploy --only hosting
```

---

## 🔀 Git Workflow (Recommended)

Every push to the `main` branch now triggers an automatic deployment to Firebase Hosting.

To enable this in GitHub:

1. Create a Firebase service account and download its JSON key.
2. Add it as a GitHub secret named `FIREBASE_SERVICE_ACCOUNT_AMAN_KUMAR_CV` in your repository settings.
3. Push to `main` and the site will be deployed automatically.

Pull latest changes:

```bash
git pull
```

Add changes:

```bash
git add .
```

Commit changes:

```bash
git commit -m "docs: update resume content"
```

Push changes:

```bash
git push
```

---

## 📌 Project Flow

```text
Developer
    |
    |
    v
Git Repository
    |
    |
    v
Firebase Hosting
    |
    |
    v
Live Resume Website
```

---

## ✅ Summary

This project contains:

- 📄 Static resume website
- 🔥 Firebase Hosting deployment
- 📑 Downloadable PDF resume
- 🔄 Git-based update workflow
- 🚀 Simple deployment process
