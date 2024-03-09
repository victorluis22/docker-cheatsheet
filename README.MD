# Lista de Comandos para Docker

Anotação de alguns comandos básicos para docker.

## Rodando banco de dados MySQL

* Baixando imagem do mysql 
```
docker pull mysql
```
* Rodando container usando a imagem do mysql e expondo a porta 3306
```
docker run --name nome_do_container -e MYSQL_ROOT_PASSWORD=sua_senha -p:3306:3306 -d mysql
```
* Abrindo Bash dentro do container para rodar comandos
```
docker exec -it nome_do_container bash
```

## Rodando API em Node

* Clonar o código da API
```
git clone url_api
```

* Criar imagem da API por meio de um Dockerfile
```
docker build -t nome_da_imagem .
```

* Rodando container usando a imagem criada e expondo a porta 5000
```
docker run --name nome_do_container -p 5000:5000 -d nome_da_imagem
```

## Vendo status dos containers

* Vendo quais containers estão rodando
```
docker ps
ou
docker container ls
```

* Iniciando, reiniciando, parando e removendo containers
```
docker start nome_do_container
docker restart nome_do_container
docker stop nome_do_container
docker rm nome_do_container
```

## Vendo status das imagens

* Vendo quais imagens estão criadas
```
docker image ls
```

* Removendo imagens
```
docker rmi nome_da_imagem
```

## Vendo logs do container

* Ver logs passados do container
```
docker logs nome_do_container
```
* Ver logs em tempo real do container
```
docker logs -f nome_do_container
```

