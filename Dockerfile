FROM python:3.7-alpine

EXPOSE 5000
WORKDIR /opt/app/

# install app's python requirements
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

# copy app into container
COPY app /opt/app/

# run app
CMD ["python", "main.py"]
