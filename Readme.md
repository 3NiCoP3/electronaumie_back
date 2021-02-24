## Comment builder l'image docker

`docker build -t electro . `

## Comment run l'image docker 

``docker run --name electronaumie_back -p 80:80 --mount type=bind,source="$(pwd)",target=/var/www/html electro
``

## Comment stopper/démarrer ?

``docker stop electronaumie_back``   
``docker start electronaumie_back``

