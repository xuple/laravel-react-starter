#!/bin/bash

echo "🔍 Verifying Laravel React Starter Kit Setup..."
echo "================================================"

# Check if we're in the right directory
if [ ! -f "package.json" ] || [ ! -f "composer.json" ]; then
    echo "❌ Error: Not in Laravel React Starter Kit directory"
    exit 1
fi

echo "✅ Directory structure verified"

# Test composer install
echo "📦 Testing composer install..."
if composer install --no-dev --optimize-autoloader --quiet; then
    echo "✅ composer install successful"
else
    echo "❌ composer install failed"
    exit 1
fi

# Test npm install
echo "📦 Testing npm install..."
if npm install --silent; then
    echo "✅ npm install successful"
else
    echo "❌ npm install failed"
    exit 1
fi

# Test TypeScript compilation
echo "🔧 Testing TypeScript compilation..."
if npm run types --silent; then
    echo "✅ TypeScript compilation successful"
else
    echo "❌ TypeScript compilation failed"
    exit 1
fi

# Test ESLint
echo "🔍 Testing ESLint..."
if npm run lint --silent; then
    echo "✅ ESLint passed"
else
    echo "❌ ESLint failed"
    exit 1
fi

# Test build process
echo "🏗️  Testing build process..."
if npm run build --silent; then
    echo "✅ Production build successful"
else
    echo "❌ Production build failed"
    exit 1
fi

# Test SSR build
echo "🔄 Testing SSR build..."
if npm run build:ssr --silent; then
    echo "✅ SSR build successful"
else
    echo "❌ SSR build failed"
    exit 1
fi

echo ""
echo "🎉 All tests passed! The starter kit is ready for:"
echo "   • Copying to standalone project"
echo "   • Submitting pull request to maintainers"
echo "   • Starting development"
echo ""
echo "📋 Next steps:"
echo "   1. Copy this folder to your new project location"
echo "   2. Update .env file with your configuration"
echo "   3. Run 'composer install' and 'npm install'"
echo "   4. Start development with 'npm run dev'"
echo "" 