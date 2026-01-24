from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI(title="Simple FastAPI App", version="1.0.0")


@app.get("/")
async def root():
    return {"message": "Welcome to FastAPI!"}


@app.get("/health")
async def health():
    return {"status": "healthy"}


@app.get("/items/{item_id}")
async def read_item(item_id: int):
    return {"item_id": item_id, "message": f"Item {item_id} retrieved folders changed"}


@app.post("/items")
async def create_item(item: dict):
    return {"message": "Item created", "item": item}
