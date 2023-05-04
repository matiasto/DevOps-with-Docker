FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl

COPY curler_script.sh .

RUN chmod +x curler_script.sh

CMD ./curler_script.sh
