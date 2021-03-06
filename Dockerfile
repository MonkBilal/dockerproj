FROM python:3.7.3-stretch

#Working Directory
WORKDIR /app


#Copy source code to working directiory
COPY . app.py /app/

# Install packages from requirements
#hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
	pip install --trusted-host pypi.python.org -r requirements.txt	
