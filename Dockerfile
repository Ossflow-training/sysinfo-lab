FROM python:3.13-slim
WORKDIR /app
# dépendances d'abord : cette couche reste en cache tant que requirements.txt ne change pas
COPY script/mysystem/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY script/mysystem/mysystem.py .
ENTRYPOINT ["python", "mysystem.py"]