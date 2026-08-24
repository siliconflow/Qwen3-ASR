# Qwen3-ASR API Proxy
# Lightweight proxy to clean vLLM transcription responses

FROM python:3.10-slim

WORKDIR /app

# Install dependencies
RUN pip install --no-cache-dir \
    fastapi==0.115.0 \
    uvicorn==0.32.0 \
    httpx==0.28.0

# Copy proxy application
COPY app.py .

# Environment defaults
ENV VLLM_HOST=127.0.0.1
ENV VLLM_PORT=8080
ENV CLEAN_OUTPUT=true
ENV PORT=80

EXPOSE 80

# Run proxy
CMD ["python", "app.py"]
