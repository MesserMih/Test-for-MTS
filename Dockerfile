FROM python:3.9-alpine
WORKDIR /opt/app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY app.py .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0" ]

EXPOSE 5000
