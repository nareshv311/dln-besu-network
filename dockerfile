FROM openebs/rhel7

RUN yum install java-1.8.0-openjdk -y && \
    curl -f -L -o besu-22.10.0-RC2.tar https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.10.0-RC2/besu-22.10.0-RC2.tar.gz && \
    cd / && \
    tar xvf besu-22.10.0-RC2.tar && \
    ls / && \
    mv besu-22.10.0-RC2.tar besu  && \
      curl -f -L -o dln-besu-nerwork.zip && \
      unzip dln-besu-network.zip && \
      mkdir -p besu/qbft-network && \
      mkdir data && \
      chmod 777 data && \
      cp genesis-dev.json besu/qbft-network/genesis-dev.json && \
      chmod 777 -R besu
