################################################
# Dockerfile to build coffee_mug docker images.#
# Based on python:3.7.0                        #
################################################

# Set the base image to Ubuntu
FROM python:3.7.0

# File Author / Maintainer
MAINTAINER Akash Sarang thisisakash92@yahoo.com

# Make working directory
RUN mkdir /coffee_mug

# Make static root directory
RUN mkdir /coffee_mug/staticfiles

# Copy code to docker directory
COPY ./ /coffee_mug/

#Set work directory
WORKDIR /coffee_mug

# Install the requirements
RUN pip install -r requirements.txt

# Expose django port
EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000
