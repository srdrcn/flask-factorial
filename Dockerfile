FROM python:3.8.7-alpine
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
EXPOSE 3080
ENTRYPOINT ["python", "app.py"]
