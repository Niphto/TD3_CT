FROM python:3.8-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt && \ rm -rf /var/cache/apk/*

COPY fibonacci.py .

CMD ["python","./fibonacci.py", "15"]
