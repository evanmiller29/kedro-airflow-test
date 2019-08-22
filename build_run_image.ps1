docker build --tag=kedro_airflow .

docker stop $(docker ps -a -q)
docker-compose up