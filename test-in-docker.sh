set -e -v

echo "URL path = ${urlPath}"

docker-compose down
docker-compose pull
docker-compose build -q
if docker-compose run -e urlPath="${urlPath}" --service-ports --rm tests bash ./test.sh; then
  echo "All test passed successfully. Shut down containers......"
  docker-compose down
  exit 0
else
  echo "Test failed. Shut down containers......"
  docker-compose down
  exit 1
fi
