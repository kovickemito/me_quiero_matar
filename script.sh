#!/bin/bash
echo "FROM python:3" > Dockerfile
echo "COPY requeriments.txt /home/." >> Dockerfile
echo "RUN pip install -r /home/requeriments.txt" >> Dockerfile
echo "EXPOSE 8090 " >> Dockerfile
echo "WORKDIR /home/app/" >> Dockerfile
echo "COPY server.py . " >> Dockerfile
echo "RUN mkdir css" >> Dockerfile
echo "COPY css/* css/. " >> Dockerfile
echo "RUN mkdir fonts" >> Dockerfile
echo "COPY fonts/* fonts/. " >> Dockerfile
echo "RUN mkdir images" >> Dockerfile
echo "COPY images/* images/. " >> Dockerfile
echo "RUN mkdir js" >> Dockerfile
echo "COPY js/* js/. " >> Dockerfile
echo "RUN mkdir sass" >> Dockerfile
echo "COPY sass/* sass/. " >> Dockerfile
echo "RUN mkdir templates" >> Dockerfile
echo "COPY templates/* templates/. " >> Dockerfile
echo "CMD python3 server.py" >> Dockerfile

docker stop templates
docker rm templates
docker build -t final .
docker run -t -d -p 8090:8090 --name templates final
docker ps -a
