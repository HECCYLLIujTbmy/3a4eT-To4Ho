FROM debian

RUN apt-get update && apt-get install -y iproute2

RUN mkdir /output

RUN sudo /bin/ss -tulpn > /output/result.txt
