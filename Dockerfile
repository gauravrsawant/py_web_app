# Dockerfile
FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port 8082 to allow external access
EXPOSE 8082

# Command to run the Flask application on port 8082
CMD ["python", "app.py", "--host=0.0.0.0", "--port=8082"]
