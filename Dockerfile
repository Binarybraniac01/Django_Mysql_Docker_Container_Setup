FROM python:3.10

ENV PYTHONDONOTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# RUN apt-get clean && apt-get vim -y && apt-get install default-libmyclient-dev -yy

COPY requirements.txt .
# (. means /app)

# RUN pip install --upgrade pip        #it somtimes gives isues
RUN pip install -r requirements.txt

COPY . .
# first (.) means my current project directory in vscode and second (.) means the docker /app
# It will copy all the vscode project files to dockers /app folder
# COPY takes source and destination



