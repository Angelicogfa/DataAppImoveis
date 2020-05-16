FROM python:3.7
EXPOSE 8501
WORKDIR /app

COPY requeriments.txt ./requeriments.txt
RUN pip3 install --no-cache-dir -r requeriments.txt

COPY . .

CMD ["streamlit", "run", "app.py", "--server.port", "80"]