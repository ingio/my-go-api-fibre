# testing go fiber API
![alt text](https://gofiber.io/assets/images/logo.svg)
```
curl http://localhost:8080/health

```

## source of examples  
[gofiber](https://gofiber.io/)  
[recipes](https://github.com/gofiber/recipes)  
[tutorial-go-fiber-rest-api](https://github.com/koddr/tutorial-go-fiber-rest-api)

```
build as arm64
az acr login ioeusacr
az acr build -t myapi:arm64 -r ioeusacr . --platform linux/arm64/v8

kubectl run -i --tty busybox --image=busybox --restart=Never -- sh

kubectl run -i --tty busybox --image=arm64v8/alpine --restart=Never -- sh

kubectl run -i --tty debian --image=debian --restart=Never -- /bin/bash

kubectl run -i --tty myapi --image=ingihome/myapi:debianarm64 --restart=Never -- sh


Error: failed to create containerd container: mount callback failed on /ssd/microk8s/var/lib/containerd/tmpmounts/containerd-mount3719842426: no users found
```
