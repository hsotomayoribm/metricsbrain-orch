FROM python:3.11-slim

RUN apt-get update && apt-get install gcc -y
dig pypi.org
RUN pip install langflow

EXPOSE 7860
CMD ["langflow", "--host", "0.0.0.0"]