FROM python:3
ADD entrypoint.sh /app/entrypoint.sh
RUN git clone https://github.com/unexpectedpanda/retool.git /app/retool
RUN pip install alive-progress darkdetect lxml psutil pyside6 strictyaml validators
ENTRYPOINT ["sh", "-c", "/app/entrypoint.sh"]
WORKDIR /app
