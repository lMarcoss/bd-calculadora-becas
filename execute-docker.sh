docker stop calc-beca-container
docker rm calc-beca-container
docker build -t calc-beca .
docker run --env-file bd.env -d -p 3311:3306 --name calc-beca-container calc-beca
docker start calc-beca-container