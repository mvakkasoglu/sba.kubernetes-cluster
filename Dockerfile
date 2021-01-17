FROM alpine:3.5
RUN apk add py3-pip
RUN pip3 install flask
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
COPY web.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/
EXPOSE 5000
CMD ["python3", "/usr/src/app/web.py"]
