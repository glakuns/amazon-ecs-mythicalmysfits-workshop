FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
RUN pip3 install --upgrade pip

#[TODO]: Copy python source files and requirements file into container image
COPY ./service /MythicalMysfitsService
WORKDIR /MythicalMysfitsService
#[TODO]: Install dependencies listed in the requirements.txt file using pip3
RUN pip3 install -r ./requirements.txt
#[TODO]: Specify a listening port for the container
EXPOSE 80
#[TODO]: Run mythicalMysfitsService.py as the final step. We want this container to run as an executable. Looking at ENTRYPOINT and CMD for this?
ENTRYPOINT ["python3"]
CMD ["mythicalMysfitsService.py"]
