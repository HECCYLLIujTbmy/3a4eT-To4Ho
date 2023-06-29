FROM debian

RUN apt-get update && apt-get install -y iproute2

RUN mkdir /output

RUN /bin/ss -tulpn > /output/result.txt
