FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN python -m spacy download en_core_web_sm
EXPOSE 8501
CMD streamlit run app.py --server.port $PORT
