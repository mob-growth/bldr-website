# BLDR Business Website

A modern business website built with Astro.

## 🚀 Quick Start

### Prerequisites
- Node.js (v18 or higher) ✅
- npm (v8 or higher) ✅
- Git ✅

### Development
```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## 📋 Setup Checklist

### 1. Git Configuration (Required)
Set up your Git identity:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### 2. GitHub Setup (Required)
1. Install GitHub CLI:
   ```bash
   # macOS
   brew install gh
   
   # Or download from: https://cli.github.com/
   ```

2. Authenticate with GitHub:
   ```bash
   gh auth login
   ```

3. Create a new repository on GitHub:
   ```bash
   gh repo create bldr-website --public --source=. --remote=origin --push
   ```

### 3. Vercel Deployment (Future)
1. Create a Vercel account at https://vercel.com
2. Install Vercel CLI:
   ```bash
   npm i -g vercel
   ```
3. Deploy:
   ```bash
   vercel
   ```

## 🛠️ Project Structure
```
BLDRpage/
├── public/          # Static assets
├── src/
│   ├── components/  # Reusable components
│   ├── layouts/     # Page layouts
│   └── pages/       # Route pages
├── astro.config.mjs # Astro configuration
└── package.json     # Dependencies
```

## 🎨 Customization
- Update `src/pages/index.astro` for your homepage
- Add new pages in `src/pages/`
- Create components in `src/components/`
- Modify `astro.config.mjs` for build settings

## 📦 Available Scripts
- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run astro` - Run Astro CLI commands

## 🔗 Useful Links
- [Astro Documentation](https://docs.astro.build/)
- [Vercel Documentation](https://vercel.com/docs)
- [GitHub CLI Documentation](https://cli.github.com/)
