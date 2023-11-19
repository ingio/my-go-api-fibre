# testing go fiber API
![alt text](https://gofiber.io/assets/images/logo.svg)

# On Docker
```
make up

curl http://localhost:8080/health
curl http://localhost:8080/hello
```

## On Kubernetes
```
kubectl apply -f k8s/

curl http://<hostname>/health
curl http://<hostname>/hello
```

## source of examples  
[gofiber](https://gofiber.io/)  
[recipes](https://github.com/gofiber/recipes)  
[tutorial-go-fiber-rest-api](https://github.com/koddr/tutorial-go-fiber-rest-api)
