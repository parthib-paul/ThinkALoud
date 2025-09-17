#!/bin/bash

echo "�� StudyAI Setup Script"
echo "======================"

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8+ first."
    exit 1
fi

echo "✅ Python 3 found: $(python3 --version)"

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is not installed. Please install pip first."
    exit 1
fi

echo "✅ pip3 found"

# Install dependencies
echo "📦 Installing dependencies..."
pip3 install -r requirements.txt

if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully!"
else
    echo "❌ Failed to install dependencies. Please check your Python environment."
    exit 1
fi

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo "📝 Creating .env file..."
    cat > .env << EOL
# Optional: Add your Anthropic API key for AI features
# ANTHROPIC_API_KEY=your_api_key_here

# Note: The app works without API keys using smart fallback questions!
EOL
    echo "✅ .env file created"
else
    echo "✅ .env file already exists"
fi

echo ""
echo "🚀 Setup complete! You can now run:"
echo "   python3 app.py"
echo ""
echo "📱 Then open: http://localhost:8080"
echo ""
echo "💡 Tip: Add your Anthropic API key to .env for AI features"
echo "   (The app works great without it too!)"
