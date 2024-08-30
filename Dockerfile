# Start with the Python 3.9 slim base image
FROM python:3.9-slim
RUN sudo apt-get update
RUN apt-get install -y curl
# Install required system packages and ODBC 18
#Debian 9-11
RUN curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc


#Debian 11
RUN curl https://packages.microsoft.com/config/debian/11/prod.list | sudo tee /etc/apt/sources.list.d/mssql-release.list


RUN sudo apt-get update
RUN sudo ACCEPT_EULA=Y apt-get install -y msodbcsql18

# Set the default command to run your application (modify as necessary)
CMD ["python", "Test.py"]
