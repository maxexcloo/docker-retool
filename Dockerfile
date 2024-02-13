FROM python:3
ADD entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
RUN apt update && \
    apt upgrade -y && \
    apt install -y expect git && \
    apt clean
RUN git clone https://github.com/unexpectedpanda/retool.git /app/retool
RUN pip install alive-progress darkdetect lxml psutil pyside6 strictyaml validators
ENTRYPOINT ["/app/entrypoint.sh"]
WORKDIR /data
