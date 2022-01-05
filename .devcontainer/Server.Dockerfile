
FROM python:3.8
COPY . /app
WORKDIR /app
# RUN pip install -r requirements.txt
RUN tar xvfz flask-offline-download.tgz \
    && cd flask-offline-download \
    && pip install Flask-2.0.2-py3-none-any.whl -f ./ --no-index
ENTRYPOINT ["python"]
EXPOSE 25250
CMD ["server.py"]
