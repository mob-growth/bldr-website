# 🚀 Deployment Guide - BLDR Website

## ✅ Completed Setup

### 1. Astro Project ✅
- **Status**: Fully configured and working
- **Development Server**: `npm run dev` (tested and working)
- **Build Process**: `npm run build` (tested and working)
- **Location**: `/Users/mohbeenqureshi/Desktop/Cursor/BLDRpage`

### 2. Git Configuration ✅
- **Name**: Mohbeen Qureshi
- **Email**: mob@mob-growth.com
- **Repository**: Initialized and configured

### 3. GitHub Integration ✅
- **GitHub CLI**: Installed and authenticated
- **Repository**: https://github.com/mob-growth/bldr-website
- **Status**: Public repository created and synced
- **Remote**: origin → https://github.com/mob-growth/bldr-website.git

## 🎯 Next Steps: Vercel Deployment

### Option 1: Web Interface (Recommended)
1. **Visit**: https://vercel.com
2. **Sign up/Login** with your GitHub account
3. **Import Project**:
   - Click "New Project"
   - Select "Import Git Repository"
   - Choose `mob-growth/bldr-website`
   - Vercel will auto-detect Astro settings
4. **Deploy**: Click "Deploy"

### Option 2: Command Line (Alternative)
If you want to use CLI, first fix npm permissions:
```bash
# Fix npm cache permissions
sudo chown -R $(whoami) ~/.npm

# Install Vercel CLI
npm install -g vercel

# Deploy
vercel
```

## 🔧 Project Configuration

### Build Settings (Already Configured)
- **Framework**: Astro
- **Build Command**: `npm run build`
- **Output Directory**: `dist`
- **Install Command**: `npm install`

### Environment Variables
- None required for basic setup

## 📁 Repository Structure
```
bldr-website/
├── src/
│   └── pages/
│       └── index.astro    # Homepage
├── public/                # Static assets
├── astro.config.mjs       # Astro configuration
├── package.json           # Dependencies
├── vercel.json           # Vercel configuration
└── README.md             # Documentation
```

## 🔄 Development Workflow

### Local Development
```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run preview      # Preview production build
```

### Git Workflow
```bash
git add .            # Stage changes
git commit -m "message"  # Commit changes
git push origin main # Push to GitHub
```

### Deployment
- **Automatic**: Every push to `main` branch will trigger deployment
- **Manual**: Deploy from Vercel dashboard or CLI

## 🌐 Domain & Customization

### Custom Domain (Optional)
1. Go to Vercel project settings
2. Add custom domain
3. Configure DNS records

### Environment Variables (Future)
- Add in Vercel project settings
- Use for API keys, database URLs, etc.

## 📞 Support

### Useful Links
- **Vercel Docs**: https://vercel.com/docs
- **Astro Docs**: https://docs.astro.build/
- **GitHub Repo**: https://github.com/mob-growth/bldr-website

### Common Issues
- **Build Failures**: Check Vercel build logs
- **Environment Variables**: Add in Vercel project settings
- **Custom Domains**: Configure DNS records

---

**🎉 Your foundation is complete! Ready for deployment on Vercel.**
