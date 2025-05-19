# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app files
COPY . .

# Start Flask app using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "main:app"]
