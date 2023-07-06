FROM python:3.11-slim

RUN apt-get update && apt-get install gcc -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install langflow

EXPOSE 7860
CMD ["langflow", "--host", "0.0.0.0"]