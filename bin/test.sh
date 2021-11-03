set -e
set -x

docker-compose -f docker/docker-compose.yml down
docker-compose -f docker/docker-compose.yml pull
docker-compose -f docker/docker-compose.yml build
if docker-compose -f docker/docker-compose.yml run -e urlPath=${urlPath} --service-ports --rm tests bash ./bin/test-in-docker.sh; then
  echo "All test passed successfully. Shut down containers......"
  docker-compose -f docker/docker-compose.yml down
  exit 0
else
  echo "Test failed. Shut down containers......"
  docker-compose -f docker/docker-compose.yml down
  exit 1
fi
