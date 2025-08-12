#!/bin/bash

echo "🚀 BLDR Website Setup Script"
echo "============================"

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI not found. Installing..."
    if command -v brew &> /dev/null; then
        brew install gh
    else
        echo "⚠️  Homebrew not found. Please install GitHub CLI manually:"
        echo "   Visit: https://cli.github.com/"
        exit 1
    fi
else
    echo "✅ GitHub CLI is installed"
fi

# Check Git configuration
if [ -z "$(git config --global user.name)" ] || [ -z "$(git config --global user.email)" ]; then
    echo "⚠️  Git configuration not set. Please run:"
    echo "   git config --global user.name 'Your Name'"
    echo "   git config --global user.email 'your.email@example.com'"
    echo ""
    read -p "Would you like to set Git configuration now? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        read -p "Enter your name: " name
        read -p "Enter your email: " email
        git config --global user.name "$name"
        git config --global user.email "$email"
        echo "✅ Git configuration set"
    fi
else
    echo "✅ Git configuration is set"
fi

# Check if authenticated with GitHub
if ! gh auth status &> /dev/null; then
    echo "⚠️  Not authenticated with GitHub. Please run:"
    echo "   gh auth login"
    echo ""
    read -p "Would you like to authenticate with GitHub now? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        gh auth login
    fi
else
    echo "✅ Authenticated with GitHub"
fi

echo ""
echo "🎉 Setup complete! Next steps:"
echo "1. Create a GitHub repository: gh repo create bldr-website --public --source=. --remote=origin --push"
echo "2. Sign up for Vercel: https://vercel.com"
echo "3. Deploy your site: vercel"
echo ""
echo "Happy coding! 🚀"
