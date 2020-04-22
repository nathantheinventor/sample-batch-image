FROM amazonlinux:2

RUN yum install -y python3 python3-pip

RUN python3 -m pip install boto3 pandas s3fs

COPY src /code

ENTRYPOINT [ "python3", "/code/main.py" ]
