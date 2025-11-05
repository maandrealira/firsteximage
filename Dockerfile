FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements (optional if you have requirements.txt)
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose the port Flask uses
EXPOSE 3000

# Run the app
CMD ["python", "app.py"]
