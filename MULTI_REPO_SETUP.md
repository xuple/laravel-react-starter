# Multi-Repository Setup Guide

## 🎯 Three-Repository Strategy

### Repository Overview
1. **Template Repo** - Clean, no branding (for Laravel contributions and reuse)
2. **Xuple Branded Repo** - Company starter kit with Xuple branding
3. **New Project Repo** - Your actual project

## 📋 Step-by-Step Setup

### Step 1: Create GitHub Repositories
Create these three repositories on GitHub:
```
1. xuple/laravel-react-starter-template (clean template)
2. xuple/xuple-laravel-react-starter-kit (Xuple branded - already exists)
3. xuple/YOUR-PROJECT-NAME (your new project)
```

### Step 2: Set Up Template Repository (Clean Version)
```bash
# First, create a clean branch without Xuple branding
git checkout -b clean-template

# Remove Xuple branding for template
sed -i 's/@xuple\/laravel-react-starter-kit/laravel-react-starter-kit/g' package.json
sed -i 's/xuple\/laravel-react-starter-kit/laravel\/laravel/g' composer.json
sed -i 's/Xuple Laravel React Starter Kit/Laravel React Starter Kit/g' README.md
sed -i 's/Copyright (c) 2024 Xuple/Copyright (c) 2024 Laravel LLC/g' LICENSE

# Add template remote and push
git add .
git commit -m "feat: clean template version for reuse and Laravel contributions"
git remote add template git@github.com:xuple/laravel-react-starter-template.git
git push template clean-template:main
```

### Step 3: Update Xuple Branded Repository
```bash
# Switch back to main with Xuple branding
git checkout main

# Push to the existing Xuple branded repo (current origin)
git push origin main
```

### Step 4: Create Your New Project
```bash
# Clone the template for your new project
cd /path/to/your/projects
git clone git@github.com:xuple/laravel-react-starter-template.git YOUR-PROJECT-NAME
cd YOUR-PROJECT-NAME

# Update for your project
git remote rename origin template
git remote add origin git@github.com:xuple/YOUR-PROJECT-NAME.git

# Customize for your project
```

## 🔧 Project Customization Script

Create this script to customize each new project:

```bash
#!/bin/bash
# customize-project.sh

PROJECT_NAME=$1
PROJECT_DESCRIPTION=$2

if [ -z "$PROJECT_NAME" ]; then
    echo "Usage: ./customize-project.sh PROJECT_NAME 'Project Description'"
    exit 1
fi

# Update package.json
sed -i "s/laravel-react-starter-kit/$PROJECT_NAME/g" package.json

# Update composer.json
sed -i "s/laravel\/laravel/xuple\/$PROJECT_NAME/g" composer.json
sed -i "s/The skeleton application for the Laravel framework./$PROJECT_DESCRIPTION/g" composer.json

# Update README.md
cat > README.md << EOF
# $PROJECT_NAME

## Description
$PROJECT_DESCRIPTION

## Installation

\`\`\`bash
# Install dependencies
composer install
npm install

# Set up environment
cp .env.example .env
php artisan key:generate

# Run migrations
php artisan migrate

# Start development
npm run dev
\`\`\`

## Development

This project is built on the Xuple Laravel React Starter Kit with modern tooling and dependency fixes.

## License

This project is open-sourced software licensed under the [MIT license](LICENSE).
EOF

# Update .env.example
sed -i "s/APP_NAME=Laravel/APP_NAME=\"$PROJECT_NAME\"/g" .env.example

echo "✅ Project customized for: $PROJECT_NAME"
echo "📋 Next steps:"
echo "   1. Review and commit changes"
echo "   2. Push to your project repository"
echo "   3. Start development!"
```

## 🚀 Quick Commands

### For Template Repository:
```bash
git remote add template git@github.com:xuple/laravel-react-starter-template.git
```

### For New Project:
```bash
# Tell me your project name and I'll give you the exact commands
PROJECT_NAME="your-project-name"
```

## 📊 Repository Purposes

| Repository | Purpose | Branding | Use Case |
|------------|---------|----------|----------|
| **Template** | Clean starter for reuse | None (Laravel) | Laravel contributions, general use |
| **Xuple Branded** | Company starter kit | Xuple | Company projects, showcase |
| **Your Project** | Actual application | Your project | Production application |

## 🎯 Benefits

✅ **Clean Template**: Ready for Laravel contributions
✅ **Company Branding**: Xuple gets credit for improvements  
✅ **Project Flexibility**: Each project can evolve independently
✅ **Easy Updates**: Pull improvements into any repository
✅ **Reusability**: Template can be used for multiple projects

## Next Steps

1. **What's your new project name?**
2. **What's the project description?**
3. **I'll help you set up all three repositories with the exact commands**