FROM python:3.9.16
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 3000
ENV FLASK_APP=main.py
CMD ["flask", "run", "-h", "0.0.0.0", "-p", "3000"]

