# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all files to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variable
ENV PORT=8080

# Expose port
EXPOSE 8080

# Run your server
CMD ["python", "main.py"]
