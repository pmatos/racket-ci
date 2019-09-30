FROM debian:stretch-slim
LABEL maintainer="pmatos@linki.tools"
LABEL description="Debian Stable Slim image with Racket build dependencies pre-installed. Mostly used for Racket CI."

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y unzip python libxml2-dev libfindbin-libs-perl make gcc g++ uuid-dev git && \
    apt-get clean

CMD ["bash"]
