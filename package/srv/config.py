"""Settings af app."""
from pydantic import BaseSettings


class Settings(BaseSettings):
    """Settings of app."""

    host: str = "0.0.0.0"
    port: int = 8080


settings = Settings()
