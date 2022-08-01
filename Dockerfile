FROM docker.io/python:3.6.9-slim

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt
RUN python trainLexicon.py
EXPOSE 3000
ENTRYPOINT [ "python" ]
CMD [ "lemmatizer.py" ]
