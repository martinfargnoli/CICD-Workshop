FROM python:3.10

WORKDIR /CICD-Workshop

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENV FLASK_APP=app.py

CMD [ "flask", "run", "--host", "0.0.0.0" ]
