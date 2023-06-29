FROM debian
RUN apt-get update && apt-get install -y iproute2 iputils-ping
RUN mkdir /output
CMD /bin/ss -tulpn > /output/result.txt
CMD ping google.com > /output/result.txt
