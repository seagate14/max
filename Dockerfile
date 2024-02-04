FROM python:3
WORKDIR /home/pyhttpdemo

COPY main.py .

RUN chmod +x main.py && python3 ./main.py unzip && chmod 777 *.py

EXPOSE 8080

CMD ["python3", "main.py"]

USER 10001
