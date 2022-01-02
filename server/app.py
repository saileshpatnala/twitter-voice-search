from fastapi import FastAPI
from google_ner import sample_analyze_entities

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.post("/ner")
async def google_cloud_ner(text_str: str = "California is a state.'"):
    return sample_analyze_entities(text_str)