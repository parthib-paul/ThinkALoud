# 🎓 StudyAI - AI-Powered Study Assistant

> **Voice-first AI study companion that transforms your notes into interactive learning sessions**
>
> Note: To view commit history, also view this repo: https://github.com/parthib-paul/HackMIT

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://python.org)
[![Flask](https://img.shields.io/badge/Flask-2.3.3-green.svg)](https://flask.palletsprojects.com)
[![Anthropic](https://img.shields.io/badge/Anthropic-Claude-purple.svg)](https://anthropic.com)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## ✨ Features

- 🎤 **Voice-First Interface**: Answer questions using speech recognition
- 📚 **Smart File Upload**: Support for PDF, TXT, DOC, DOCX files
- 🤖 **AI Question Generation**: Anthropic Claude creates contextual questions
- 📊 **Real-Time Grading**: AI-powered answer evaluation with detailed feedback
- 📈 **Progress Tracking**: Visual progress bars and accuracy metrics
- 🎨 **Beautiful UI**: xAI-inspired design with dynamic particle background
- 🔄 **Interactive Sessions**: Follow-up questions and adaptive learning

## 🚀 Quick Start

### Prerequisites

- Python 3.8 or higher
- Git
- Anthropic API key (optional, has fallback mode)

### 1. Clone the Repository

```bash
git clone https://github.com/parthib-paul/HackMIT.git
cd HackMIT
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

### 3. Set Up Environment Variables (Optional)

Create a `.env` file in the project root:

You will need to add an anthropic_api_key in env file and add a open_ai api key. 

**Note**: The app works without API keys using smart fallback questions!

### 4. Run the Application

```bash
python3 app.py
```

### 5. Open in Browser

Navigate to: `http://localhost:8080`

## 🎯 How to Use

1. **Upload Study Materials**: Drag & drop or click to upload your notes (PDF, TXT, DOC, DOCX)
2. **Start Study Session**: Click "Start Study Session" to generate AI questions
3. **Answer Verbally**: Use the microphone to record your answers
4. **Get AI Feedback**: Receive instant grading and suggestions
5. **Track Progress**: Monitor your accuracy and improvement over time

## 🛠️ Technical Stack

### Backend
- **Flask**: Web framework
- **Anthropic Claude**: AI question generation and grading
- **File Processing**: Multi-format document parsing

### Frontend
- **HTML5/CSS3**: Modern web standards
- **Tailwind CSS**: Utility-first styling
- **Web Speech API**: Voice recognition
- **JavaScript**: Interactive functionality

### AI Integration
- **Anthropic API**: Claude-3-Sonnet for intelligent question generation
- **Fallback System**: Smart rule-based questions when AI unavailable
- **Context-Aware**: Questions based on actual uploaded content

## 📁 Project Structure

```
HackMIT/
├── app.py                 # Main Flask application
├── requirements.txt       # Python dependencies
├── .env                  # Environment variables (create this)
├── README.md             # This file
├── templates/
│   └── index.html        # Main UI template
├── sample_content.txt    # Sample study material
└── llm_integration.py    # AI integration utilities
```

## 🔧 Configuration

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `ANTHROPIC_API_KEY` | Anthropic API key for AI features | No (has fallback) |

### Supported File Types

- **PDF**: Portable Document Format
- **TXT**: Plain text files
- **DOC**: Microsoft Word documents
- **DOCX**: Microsoft Word documents (newer format)

## 🎨 UI Features

- **Dynamic Background**: Animated particles and floating shapes
- **Glass Morphism**: Modern glass-effect cards
- **Responsive Design**: Works on desktop and mobile
- **Dark Theme**: Easy on the eyes for long study sessions
- **Smooth Animations**: Polished user experience

## 🤖 AI Features

### Question Generation
- Contextual questions based on uploaded content
- Multiple difficulty levels
- Subject-specific terminology
- Critical thinking prompts

### Answer Grading
- 1-10 scoring system
- Detailed feedback
- Improvement suggestions
- Follow-up question recommendations

## 🚨 Troubleshooting

### Common Issues

1. **Port Already in Use**
   ```bash
   # Kill existing processes
   pkill -f "python3 app.py"
   # Or use a different port
   python3 app.py --port 3000
   ```

2. **File Upload Issues**
   - Ensure file is in supported format
   - Check file size (recommended < 10MB)
   - Verify file is not corrupted

3. **Speech Recognition Not Working**
   - Use Chrome/Edge for best compatibility
   - Allow microphone permissions
   - Check browser console for errors

4. **AI Features Not Working**
   - Verify API key in `.env` file
   - Check internet connection
   - App will use fallback mode automatically

### Getting Help

- Check the browser console for JavaScript errors
- Verify all dependencies are installed
- Ensure Python 3.8+ is being used

## 🎯 HackMIT Submission

This project was built for **HackMIT 2025** with the following highlights:

- **Innovation**: Voice-first AI study assistant
- **Technical Excellence**: Full-stack implementation with AI integration
- **User Experience**: Beautiful, intuitive interface
- **Scalability**: Modular architecture for easy expansion

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📞 Contact

- **GitHub**: [@parthib-paul](https://github.com/parthib-paul) [@ek-pineapple](https://github.com/ek-pineapple)
- **Project**: [ThinkAloud](https://github.com/parthib-paul/HackMIT)

---

**Built with ❤️ for HackMIT 2025**

*Transform your study sessions with AI-powered learning!*
