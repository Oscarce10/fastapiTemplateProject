import uvicorn
from fastapi import FastAPI

from api.framework.routers import root

app = FastAPI(
    title="Fastapi base template for Python API projects",
    description="Base template project.",
    version="v1",
    docs_url="/docs"
)

app.include_router(
    root.router
)


def start():
    uvicorn.run(
        "config:app",
        host="127.0.0.1",
        port=5003,
        reload=True,
        log_level="info"
    )
