FROM python:3.8-slim

WORKDIR /

COPY example example
COPY app.py .
COPY style.css .

RUN python -m pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir edge-tts gradio asyncio

CMD ["python3", "app.py"]
