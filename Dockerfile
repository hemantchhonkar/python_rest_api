 # The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.8

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /EXS-BACKEND

# Set the working directory to /music_service
WORKDIR /EXS-BACKEND

# Copy the current directory contents into the container at /music_service
ADD . /EXS-BACKEND/

# Install any needed packages specified in requirements.txt
RUN pip install -r express_stores/deployment/requirements.txt
RUN pip install https://github.com/darklow/django-suit/tarball/v2
RUN mkdir -p /var/log/expressstores
RUN cd /var/log/expressstores
RUN touch app.log
