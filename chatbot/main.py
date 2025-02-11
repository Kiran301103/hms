import os
from PIL import Image
import streamlit as st
from streamlit_option_menu import option_menu

from gemini_utility import (
    load_gemini_pro_model,
    gemini_pro_response,
    gemini_pro_vision_response,
    embeddings_model_response
)

# Get the working directory
working_dir = os.path.dirname(os.path.abspath(__file__))

# Streamlit UI Configuration
st.set_page_config(
    page_title="KIRAN AI",
    page_icon="🧠",
    layout="centered",
)

# Sidebar Menu
with st.sidebar:
    selected = option_menu(
        "KIRAN AI",
        ["ChatBot", "Image Captioning", "Embed text", "Ask me anything"],
        menu_icon="robot",
        icons=["chat-dots-fill", "image-fill", "textarea-t", "patch-question-fill"],
        default_index=0
    )


# Function to translate roles for Streamlit
def translate_role_for_streamlit(user_role):
    return "assistant" if user_role == "model" else user_role


# **ChatBot Page**
if selected == "ChatBot":
    model = load_gemini_pro_model()

    # Initialize chat session in Streamlit
    if "chat_session" not in st.session_state:
        st.session_state.chat_session = model.start_chat(history=[])

    st.title("🤖 ChatBot")

    # Display chat history
    for message in st.session_state.chat_session.history:
        with st.chat_message(translate_role_for_streamlit(message.role)):
            st.markdown(message.parts[0].text)

    # User input for chatbot
    user_prompt = st.chat_input("Ask Kiran-Pro...")
    if user_prompt:
        st.chat_message("user").markdown(user_prompt)

        # Get response from Gemini 1.5 Pro
        gemini_response = st.session_state.chat_session.send_message(user_prompt)

        # Display AI response
        with st.chat_message("assistant"):
            st.markdown(gemini_response.text)


# **Image Captioning Page**
if selected == "Image Captioning":
    st.title("📷 Snap Narrate")

    uploaded_image = st.file_uploader("Upload an image...", type=["jpg", "jpeg", "png"])

    if uploaded_image and st.button("Generate Caption"):
        image = Image.open(uploaded_image)

        col1, col2 = st.columns(2)

        with col1:
            resized_img = image.resize((800, 500))
            st.image(resized_img)

        default_prompt = "Write a short caption for this image."

        # Get image caption from Gemini 1.5 Flash
        caption = gemini_pro_vision_response(default_prompt, uploaded_image)

        with col2:
            st.info(caption)


# **Text Embeddings Page**
if selected == "Embed text":
    st.title("🔡 Embed Text")

    user_prompt = st.text_area(label='', placeholder="Enter the text to get embeddings")

    if st.button("Get Response"):
        response = embeddings_model_response(user_prompt)
        st.markdown(response)


# **Ask Me Anything Page**
if selected == "Ask me anything":
    st.title("❓ Ask me a question")

    user_prompt = st.text_area(label='', placeholder="Ask me anything...")

    if st.button("Get Response"):
        response = gemini_pro_response(user_prompt)
       
