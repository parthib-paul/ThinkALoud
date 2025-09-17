# 🤖 ThinkALoud - AI-Powered Study Assistant

> **Transform your study materials into interactive learning sessions with voice-first AI assistance**

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://python.org)
[![Flask](https://img.shields.io/badge/Flask-2.3.3-green.svg)](https://flask.palletsprojects.com)
[![Anthropic](https://img.shields.io/badge/Anthropic-Claude-purple.svg)](https://anthropic.com)


## 🌟 Overview

ThinkALoud is an innovative AI-powered study assistant that revolutionizes how students interact with their study materials. By combining advanced AI question generation with voice recognition technology, it creates an engaging, interactive learning experience that adapts to your learning pace and style.

## ✨ Key Features

- 🎤 **Voice-First Learning**: Answer questions naturally using speech recognition
- 📚 **Multi-Format Support**: Upload PDF, TXT, DOC, and DOCX files seamlessly
- 🤖 **AI Question Generation**: Anthropic Claude creates contextual, intelligent questions
- 📊 **Real-Time AI Grading**: Instant feedback with detailed scoring and suggestions
- 📈 **Progress Analytics**: Track your learning progress with visual metrics
- 🎨 **Modern UI**: Beautiful, responsive design with dynamic animations
- 🔄 **Adaptive Learning**: Follow-up questions based on your performance
- 🛡️ **Fallback Mode**: Works perfectly even without API keys

## 🚀 Quick Start

### Prerequisites

- **Python 3.8+** (recommended: Python 3.9 or higher)
- **Git** for cloning the repository
- **Modern Web Browser** (Chrome, Firefox, Safari, or Edge)
- **Anthropic API Key** (optional - app includes smart fallback mode)

### Installation

#### 1. Clone the Repository

```bash
# Clone the repository
git clone https://github.com/parthib-paul/ThinkALoud.git

# Navigate to the project directory
cd ThinkALoud
```

#### 2. Set Up Virtual Environment (Recommended)

```bash
# Create virtual environment
python3 -m venv venv

# Activate virtual environment
# On macOS/Linux:
source venv/bin/activate
# On Windows:
# venv\Scripts\activate
```

#### 3. Install Dependencies

```bash
# Install required packages
pip install -r requirements.txt
```

#### 4. Configure Environment Variables

Create a `.env` file in the project root:

```bash
# Copy the example environment file
cp .env.example .env
```

Edit the `.env` file and add your configuration:

```env
# Anthropic API Configuration (Optional)
ANTHROPIC_API_KEY=your_anthropic_api_key_here

# Flask Configuration
FLASK_ENV=development
FLASK_DEBUG=True
SECRET_KEY=your-secret-key-here
```

**Note**: The application works perfectly without API keys using intelligent fallback questions!

#### 5. Run the Application

```bash
# Start the Flask server
python3 app.py
```

#### 6. Access the Application

Open your web browser and navigate to:
```
http://localhost:8080
```

## 🎯 How to Use

### Getting Started

1. **Upload Study Materials**
   - Drag and drop your files or click to browse
   - Supported formats: PDF, TXT, DOC, DOCX
   - Multiple files can be uploaded simultaneously

2. **Start Your Study Session**
   - Click "Start Study Session" to generate AI questions
   - Questions are created based on your uploaded content

3. **Answer Questions Verbally**
   - Click the microphone button to start recording
   - Speak your answer clearly
   - Click stop when finished

4. **Receive AI Feedback**
   - Get instant scoring (1-10 scale)
   - Receive detailed feedback and suggestions
   - View your progress in real-time

5. **Explore Follow-up Questions**
   - Get additional questions based on your performance
   - Deepen your understanding of challenging topics

## 🛠️ Technical Architecture

### Backend Stack
- **Flask 2.3.3**: Lightweight web framework
- **Anthropic Claude**: Advanced AI for question generation and grading
- **Python 3.8+**: Core programming language
- **File Processing**: Multi-format document parsing

### Frontend Stack
- **HTML5/CSS3**: Modern web standards
- **Tailwind CSS**: Utility-first CSS framework
- **JavaScript ES6+**: Interactive functionality
- **Web Speech API**: Browser-native voice recognition

### AI Integration
- **Anthropic Claude API**: Intelligent question generation
- **Context-Aware Processing**: Questions based on actual content
- **Fallback System**: Rule-based questions when AI unavailable
- **Adaptive Learning**: Performance-based follow-up questions

## 📁 Project Structure

```
ThinkALoud/
├── app.py                   # Flask application entry point
├── llm_integration.py       # AI integration utilities
├── requirements.txt         # Python dependencies
├── setup.sh                # Automated setup script
├── .env.example            # Environment variables template
├── .gitignore              # Git ignore rules
├── README.md               # This file
├── sample_content.txt      # Sample study material
└── templates/              # HTML templates
    ├── index.html          # Main application interface
    ├── speech_to_text.html # Speech recognition interface
    └── text_to_text.html   # Text-based interface
```

## 🔧 Configuration

### Environment Variables

| Variable | Description | Required | Default |
|----------|-------------|----------|---------|
| `ANTHROPIC_API_KEY` | Anthropic API key for AI features | No | None (fallback mode) |
| `FLASK_ENV` | Flask environment | No | development |
| `FLASK_DEBUG` | Enable Flask debug mode | No | True |
| `SECRET_KEY` | Flask secret key | No | Generated |

### API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/` | GET | Main application interface |
| `/upload` | POST | File upload endpoint |
| `/generate_questions` | POST | Generate AI questions |
| `/grade_answer` | POST | Grade student answers |
| `/generate_followup` | POST | Generate follow-up questions |
| `/save_session` | POST | Save study session data |
| `/analytics` | GET | Retrieve study analytics |

## 🎨 User Interface

### Design Features
- **Dynamic Particle Background**: Animated floating particles
- **Glass Morphism**: Modern translucent card design
- **Responsive Layout**: Optimized for all screen sizes
- **Dark Theme**: Easy on the eyes for extended study sessions
- **Smooth Animations**: Polished micro-interactions

### Browser Compatibility
- ✅ Chrome 80+
- ✅ Firefox 75+
- ✅ Safari 13+
- ✅ Edge 80+

## 🤖 AI Features

### Question Generation
- **Contextual Questions**: Based on actual uploaded content
- **Multiple Difficulty Levels**: Adaptive to user performance
- **Subject-Specific Terminology**: Maintains academic accuracy
- **Critical Thinking Prompts**: Encourages deep understanding

### Answer Grading
- **1-10 Scoring System**: Detailed performance metrics
- **Comprehensive Feedback**: Specific improvement suggestions
- **Learning Recommendations**: Personalized study guidance
- **Follow-up Generation**: Targeted additional questions

## 🚨 Troubleshooting

### Common Issues

#### Port Already in Use
```bash
# Find and kill existing processes
lsof -ti:8080 | xargs kill -9

# Or use a different port
export FLASK_RUN_PORT=3000
python3 app.py
```

#### File Upload Issues
- Ensure file is in supported format (PDF, TXT, DOC, DOCX)
- Check file size (recommended < 10MB)
- Verify file is not corrupted or password-protected

#### Speech Recognition Not Working
- Use Chrome or Edge for best compatibility
- Allow microphone permissions in browser
- Check browser console for JavaScript errors
- Ensure stable internet connection

#### AI Features Not Working
- Verify API key is correctly set in `.env` file
- Check internet connection
- App automatically uses fallback mode if AI unavailable

### Getting Help

1. **Check Browser Console**: Press F12 and look for JavaScript errors
2. **Verify Dependencies**: Ensure all packages are installed correctly
3. **Check Python Version**: Ensure Python 3.8+ is being used
4. **Review Logs**: Check terminal output for Flask application logs

## 🛠️ Development

### Setting Up Development Environment

```bash
# Clone repository
git clone https://github.com/parthib-paul/ThinkALoud.git
cd ThinkALoud

# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install development dependencies
pip install -r requirements.txt

# Set up pre-commit hooks (optional)
pip install pre-commit
pre-commit install
```

### Running Tests

```bash
# Run application tests
python -m pytest tests/

# Run with coverage
python -m pytest --cov=app tests/
```

### Contribution Guidelines

- Follow PEP 8 style guidelines
- Add tests for new features
- Update documentation as needed
- Ensure all tests pass before submitting
