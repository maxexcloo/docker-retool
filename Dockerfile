FROM python:3
RUN mkdir /app
ADD entrypoint.sh /app/entrypoint.sh
RUN cd /app
RUN git clone https://github.com/unexpectedpanda/retool.git
RUN pip install alive-progress darkdetect lxml psutil pyside6 strictyaml validators
ENTRYPOINT ["sh", "-c", "/app/entrypoint.sh"]
WORKDIR /app
