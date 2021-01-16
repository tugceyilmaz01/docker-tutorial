#set base image
FROM python:alpine3.8 

# copy information here to move application to our container image
COPY . /app

#set working directory
WORKDIR /app

#set packages in the requeirements.txt --run requirements.txt
RUN pip install -r requirements.txt

#expose port as 5000
EXPOSE 5000

#run app.py
RUN python ./app.py