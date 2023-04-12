# uwintu

Code to create a windows guest container in a linux host



LINUX > DOCKER > ubuntu container > virtualbox > windows 10


Can be run as:
```
sudo docker build -t uwintu .
sudo docker run --privileged -it --name test --rm -v /dev/vboxdrv:/dev/vboxdrv -e DISPLAY=$DISPLAY --network=host uwintu
```

Or with docker-compose:
```
docker compose up uwintu
```



GUI Qt can give some issues:
```
xhost +local:docker 
```
