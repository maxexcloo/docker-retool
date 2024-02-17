FROM python:3
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt upgrade -y && \
    apt install -y expect git && \
    apt clean
RUN git clone https://github.com/unexpectedpanda/retool.git /app/retool && \
    pip install alive-progress darkdetect lxml psutil pyside6 strictyaml validators
ADD entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
WORKDIR /data
