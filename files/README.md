# CHATBOT Project

A chatbot project using Google's Agent Development Kit (ADK) and Vertex AI for RAG (Retrieval-Augmented Generation) functionality.

## Setup Instructions

### Prerequisites
- Python 3.8 or higher
- Google Cloud Platform account with Vertex AI enabled
- RAG corpus configured in Vertex AI

### Quick Setup

#### Windows
1. Double-click `setup_venv.bat` or run it from Command Prompt
2. The script will automatically:
   - Create a virtual environment
   - Activate it
   - Install all required dependencies

#### Linux/Mac
1. Make the setup script executable: `chmod +x setup_venv.sh`
2. Run the setup script: `./setup_venv.sh`

### Manual Setup

If you prefer to set up manually:

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows:
venv\Scripts\activate.bat
# Linux/Mac:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
```

### Environment Variables

Create a `.env` file in the project root with your configuration:

```env
RAG_CORPUS=projects/YOUR_PROJECT_ID/locations/us-central1/ragCorpora/YOUR_CORPUS_ID
```

### Usage

After setting up the virtual environment:

1. Activate the virtual environment:
   ```bash
   # Windows
   venv\Scripts\activate.bat
   
   # Linux/Mac
   source venv/bin/activate
   ```

2. Use the chatbot agent in your code:
   ```python
   from CHATBOT import agent
   
   # The root_agent is ready to use
   response = agent.root_agent.run("Your question here")
   ```

3. Deactivate when done:
   ```bash
   deactivate
   ```

## Project Structure

- `agent.py` - Main agent configuration with Vertex AI RAG retrieval
- `prompts.py` - Instruction prompts for the agent
- `requirements.txt` - Python dependencies
- `setup_venv.bat` - Windows setup script
- `setup_venv.sh` - Linux/Mac setup script

## Dependencies

- `google-adk` - Google Agent Development Kit
- `google-cloud-aiplatform` - Vertex AI platform
- `python-dotenv` - Environment variable management
