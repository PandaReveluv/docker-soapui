FROM openjdk:11
COPY demo-soapUI-soapui-project.xml /test/
COPY bin/test-in-docker.sh /test/
WORKDIR /test
RUN apt-get update
RUN apt-get install -y wget
RUN wget "https://dl.eviware.com/soapuios/5.6.0/SoapUI-5.6.0-linux-bin.tar.gz"
RUN tar -xvf SoapUI-5.6.0-linux-bin.tar.gz -C /test
RUN rm -f SoapUI-5.6.0/lib/xmlbeans-xmlpublic-2.6.0.jar
