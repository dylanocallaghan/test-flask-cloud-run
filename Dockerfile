FROM python:3.8-alpine

# Set the working directory
WORKDIR /app

# Copy the requirements file into the image
COPY requirements.txt /app/requirements.txt

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app

# Specify the entry point and command to run the application
ENTRYPOINT ["python"]
CMD ["hello.py"]

