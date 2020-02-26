SHELL := bash

deploy:
	kubectl apply -f kube-deployment.yaml
	kubectl apply -f kube-service.yaml
	kubectl apply -f kube-ingress.yaml
	# wait about about 5 minutes for ingress to get a load balancer

status:
	kubectl get deployment nginx-deployment --output yaml
	kubectl get service nginx-service
	kubectl get ingress nginx-ingress --output yaml

clean-up:
	kubectl delete deployment nginx-deployment
	kubectl delete service nginx-service
	kubectl delete ingress nginx-ingress

