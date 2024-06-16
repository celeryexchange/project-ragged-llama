import os
import ssl

from dotenv import load_dotenv
from openai import OpenAI

# use unverified context to solve connection error
ssl._create_default_https_context = ssl._create_unverified_context

# take environment variables from .env.
load_dotenv()

client = OpenAI(api_key=os.environ.get("OPENAI_API_KEY"))


def generate_response(context, query):
    """
    Generates a response using ChatGPT.

    Parameters:
    context (str): The context or conversation history.
    query (str): The user's query or message.

    Returns:
    str: The generated response from ChatGPT.
    """
    chat_completion = client.chat.completions.create(
        messages=[
            {
                "role": "user",
                "content": f"Context: {context}\n\nQuestion: {query}",
            }
        ],
        model="gpt-4o",
    )

    return chat_completion.choices[0].message.content


# Example query
query = "What is the company policy on remote work? I am based in Slough. Be concise and factual."
context_texts = """
Flexible working
Updated on 1 July 2024

The health and wellbeing of our employees is our number one priority. That is why, at Our Company,
we're proud to support flexible working arrangements. You can work from home two days per week if
you're based in Slough or London. For those based in Manchester, the policy requires you to be in the
office four days per week.

Update on Flexible working
Updated on 12 Dec 2022

Flexible working is not allowed for employees based in Slough.
"""

answer = generate_response(context_texts, query)
print(answer)
