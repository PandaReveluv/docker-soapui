set -e -x

./SoapUI-5.6.0/bin/testrunner.sh -r /test/demo-soapUI-soapui-project.xml -GurlPath=${urlPath}
