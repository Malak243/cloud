# Use an official Python runtime as a base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container at /app
COPY python.py /app/
COPY paragraphs.txt /app/

# Install any needed dependencies specified in stopwords.py
RUN pip install --no-cache-dir nltk

# Download NLTK stopwords
RUN python -m nltk.downloader stopwords

# Run the Python script when the container launches
CMD ["python", "python.py"]