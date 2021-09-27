export image_name=emant231/exp-backend:1.1
docker build -t ${image_name} .
docker-compose up
