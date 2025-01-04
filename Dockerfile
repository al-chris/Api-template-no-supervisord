FROM python:3.12.8-slim-bookworm

# Define environment variable
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Make port 8000 available to the world outside this container
EXPOSE 8000


# CMD ["fastapi", "run", "--workers", "4", "app/main.py"]
# CMD ./scripts/multi_process_start.sh
CMD ["/bin/bash", "./scripts/multi_process_start.sh"]
