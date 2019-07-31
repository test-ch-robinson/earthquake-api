- in order to run e2e tests change jest path and rename __mocks__/request-promise.js <-- do not want to mock it


http://localhost:3000/earthquakes
http://localhost:3000/earthquakes/2

docker build . -t earthquake-api
docker run -d --restart always --hostname earthquake-api --name earthquake-api -p 4000:3000 earthquake-api