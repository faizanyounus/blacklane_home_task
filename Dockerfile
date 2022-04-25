FROM python:3.8
# install dependencies
RUN pip install boto3

COPY ListFiles.py .

# command to run on container start
CMD [ "python", "./ListFiles.py" ] 