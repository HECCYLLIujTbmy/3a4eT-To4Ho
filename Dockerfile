FROM debian
RUN apt-get update && apt-get install -y iproute2 && apt-get install -y iputils-ping
RUN mkdir /output
CMD /bin/ss -tulpn > /output/result.txt; ping google.com > /output/result.txt
