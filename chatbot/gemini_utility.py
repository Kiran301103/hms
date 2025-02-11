import os
import json
from PIL import Image
import google.generativeai as genai

# Get the working directory path
working_dir = os.path.dirname(os.path.abspath(__file__))

# Load config.json
config_file_path = os.path.join(working_dir, "config.json")
with open(config_file_path, "r") as file:
    config_data = json.load(file)

# Load API Key
GOOGLE_API_KEY = config_data["GOOGLE_API_KEY"]

# Configure Google Generative AI with API key
genai.configure(api_key=GOOGLE_API_KEY)


# Load Gemini 1.5 Pro model for text generation
def load_gemini_pro_model():
    return genai.GenerativeModel("gemini-1.5-pro")


# Generate response from Gemini 1.5 Flash (for image captioning)
def gemini_pro_vision_response(prompt, image):
    gemini_pro_vision_model = genai.GenerativeModel("gemini-1.5-flash")

    # Convert image to RGB format before sending
    image_data = Image.open(image).convert("RGB")

    response = gemini_pro_vision_model.generate_content([prompt, image_data])
    
    return response.text


# Generate embeddings from text
def embeddings_model_response(input_text):
    embedding_model = "models/embedding-001"
    
    embedding = genai.embed_content(
        model=embedding_model,
        content=input_text,
        task_type="retrieval_document"
    )

    # Handle potential response structure changes
    return embedding.get("embedding", [])


# Generate text response from Gemini 1.5 Pro
def gemini_pro_response(user_prompt):
    gemini_pro_model = genai.GenerativeModel("gemini-1.5-pro")
    
    response = gemini_pro_model.generate_content(user_prompt)
    
    return response.text
