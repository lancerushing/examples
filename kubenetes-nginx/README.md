# A small kube deployment running nginx

I use this example to test kube deployment behaviour with web apps

## First time.

Run the `deploy` target, and wait for the load balancer to come online.  (get coffee)

```shell script
make deploy
```

After waiting, run `make status` and look for the ingress address.

## To observer behaviour.

1. Run the monitor script:  `./`
2. In another window, run: `kubectl set image deployment/nginx-deployment nginx=nginx:1.16-alpine`

watch what happens to the monitor script


run another deployment

1. `kubectl set image deployment/nginx-deployment nginx=nginx:1.17-alpine`


## Finish up


```shell script
make clean-up
```
