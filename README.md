# Description

Dockerfile used to create a FiveM server base image. 

 


## Commands to build and push fivem-base to GitLab

```bash
git clone https://github.com/crocokyle/FiveM-Docker.git
cd FiveM-Docker
docker build -t registry.gitlab.com/<your-repo>/fivem-base:3903 .
docker push registry.gitlab.com/<your-repo>/fivem-base:3903
```

## Commands to build the revolution2.0 image
```bash
docker build -t registry.gitlab.com/crocokyle/revolution-2-0-docker/revolution2.0:v1.0 .
```
## Commands for running the final image

```bash
docker run -p 30120:30120 -p 30120:30120/udp -ti -v D:\temp\revolution-2-0-docker:/home/FXServer/server-data registry.gitlab.com/crocokyle/revolution-2-0-docker/revolution2.0:v1.0
```
