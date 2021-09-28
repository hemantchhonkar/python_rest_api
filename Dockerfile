 # The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.8

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /python_rest_api

# Set the working directory to /music_service
WORKDIR /python_rest_api

# Copy the current directory contents into the container at /music_service
ADD . /python_rest_api/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
RUN pip install https://github.com/darklow/django-suit/tarball/v2
RUN mkdir -p /var/log/expressstores
RUN cd /var/log/expressstores
RUN touch app.log
CMD ["bash", "./start-server.sh"]
