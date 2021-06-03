FROM      python:3
RUN       mkdir /app
WORKDIR   /app    #cd cpmmand
COPY      payment-docker.py payment.py
COPY      payment.ini .
COPY      rabbitmq.py .
COPY      requirements.txt .
RUN       pip install -r requirements.txt  #run this
CMD       ["uwsgi", "--ini", "payment.ini"] #execute these when this image is running
