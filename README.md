# Firebase Resume

Personal resume website hosted on Firebase Hosting.

## Live Site

- https://aman-kumar-cv.web.app
- https://aman-kumar-cv.firebaseapp.com

## Tech Stack

- Firebase Hosting
- Static HTML in `public/`

## Project Structure

- `public/index.html` - Main resume page
- `public/resume.pdf` - Downloadable PDF resume
- `firebase.json` - Firebase Hosting config
- `.firebaserc` - Firebase project alias mapping

## Prerequisites

- Node.js (LTS recommended)
- Firebase CLI

Install Firebase CLI globally:

```bash
npm install -g firebase-tools
```

## Local Development

From project root:

```bash
firebase login
firebase use aman-kumar-cv
firebase emulators:start --only hosting
```

Then open the local URL shown by the CLI (usually `http://localhost:5000`).

## Deploy

```bash
firebase deploy --only hosting
```

After deploy, changes are live at:

- https://aman-kumar-cv.web.app

## Update Resume From Another PC

```bash
git clone https://github.com/amankmishrasfdc/FirebaseResume.git
cd FirebaseResume
firebase login
firebase use aman-kumar-cv
```

Edit resume content:

- Update `public/index.html`
- Replace `public/resume.pdf` if needed

Deploy updates:

```bash
firebase deploy --only hosting
```

## Git Workflow (Recommended)

```bash
git pull
git add .
git commit -m "docs: update resume content"
git push
```

