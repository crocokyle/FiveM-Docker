# Description

Dockerfile used to create a FiveM server base image. 

 


## Commands to build and push fivem-base to GitLab

```bash
git clone https://github.com/crocokyle/FiveM-Docker.git
cd FiveM-Docker
docker build -t registry.gitlab.com/<your-repo>/fivem-base:3903 .
docker push registry.gitlab.com/<your-repo>/fivem-base:3903
```
