# Steps
# Receive Text from client, process and save + Agents
# client wants info from us - generating information from us
import os
import anthropic
import json
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

def read_file_as_string(filename: str) -> str:
    try:
        with open(filename, "r", encoding="utf-8") as file:
            content = file.read()
        return content
    except FileNotFoundError:
        return f"Error: File '{filename}' not found."
    except Exception as e:
        return f"Error reading file: {e}"


def main():
    sample_text = read_file_as_string("software_engineer_journal (1).txt")

    # Get API key from environment variables
    ANTHROPIC_API_KEY = os.getenv("ANTHROPIC_API_KEY")
    
    if not ANTHROPIC_API_KEY:
        print("Error: ANTHROPIC_API_KEY not found in environment variables")
        print("Please set your API key in the .env file")
        return
    
    # Send to LLM to reformat and save text
    client = anthropic.Anthropic(api_key=ANTHROPIC_API_KEY)
    
    message = client.messages.create(
        model="claude-opus-4-1-20250805",
        max_tokens=1024,
        messages=[
            {"role": "user", "content": "based on " + sample_text + "give me 3 questions that I have to answer in a python list of string type format. return only a list of text",}
        ]
    )
    output = message.content[0].text.strip()
    print(output)

    

if __name__ == "__main__":
    main()
# client wants info from us - generating information from us
