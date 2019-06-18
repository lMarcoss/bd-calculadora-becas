docker network create --subnet 192.160.0.0/16 ctrl-beca;
docker stop calc-beca-bd-container
docker rm calc-beca-bd-container
docker build -t calc-beca-bd .
docker run -d --net ctrl-beca --ip 192.160.0.12 --env-file bd.env -p 3311:3306 --name calc-beca-bd-container calc-beca-bd
docker start calc-beca-bd-container


#docker run -d --restart=always -v $HOME/ctrl-evaluaciones/mysql:/var/lib/mysql --net ctrl-evaluaciones --ip 192.160.0.12 --env-file ctrl-evaluacion.env -p 3306:3306 --name evaluaciones-database-container meltsan/control-evaluaciones-bd:1.0
