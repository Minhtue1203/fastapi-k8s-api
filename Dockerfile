# Use official Python runtime as base image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /my_fastapi_app

# Copy the requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code into the container
COPY . .

# Expose port 8000 (the port FastAPI runs on)
EXPOSE 8000

# Run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
