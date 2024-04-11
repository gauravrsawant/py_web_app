# Dockerfile
FROM python:3.8-slim

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

# Expose port 8082 to allow external access
EXPOSE 3000
CMD python ./app.py

# Command to run the Flask application on port 8082
# CMD ["python", "app.py", "--host=0.0.0.0", "--port=8082"]
