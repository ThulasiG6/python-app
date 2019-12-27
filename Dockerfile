FROM alpine:3.11

# install pyton3
RUN apk add python3
#install flask
RUN pip install flask
#install redis
RUN pip install redis
#copy your code to docker image
WORKDIR /app
COPY app.py .
#expose port
EXPOSE 5000
#start python app at run time
CMD python app.py
