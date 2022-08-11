FROM python:3.7.3-slim
 
WORKDIR /app
COPY . .
 
RUN apt-get update && \
    pip3 install --upgrade pip && \
    pip3 install -r requirements.txt
 
CMD [ "gunicorn", "--workers=2", "--threads=1", "-b 0.0.0.0:5000", "app:server"]
