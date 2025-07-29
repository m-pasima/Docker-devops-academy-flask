FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY templates/ ./templates/
EXPOSE 5000
HEALTHCHECK CMD curl --fail http://localhost:5000/ || exit 1
CMD ["python", "app.py"]
