для запуска используется команды:
# сбока образа
docker build -t dz1_docker:v1 .
# запуск контейнера
docker run --rm -it  -p 8080:8080 dz1_docker:v1 


