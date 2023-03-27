include .env
export $(shell sed 's/=.*//' .env)


# ======= DEPLOY STORAGE ACCOUNT =======

init-storage:
	cd storage && \
	terraform init && \
	cd ..

plan-storage:
	cd storage && \
	terraform fmt && \
	terraform validate && \
	terraform plan && \
	cd ..

apply-storage:
	cd storage && \
	terraform apply -auto-approve && \
	cd ..


deploy-storage:
	make init-storage
	make plan-storage
	make apply-storage

# ======= DEPLOY VIRTUAL NETWORK PEERING =======

init-vnet:
	terraform init 

plan-vnet:
	terraform fmt && \
	terraform validate && \
	terraform plan 

apply-vnet:
	terraform apply -auto-approve 


deploy-vnet:
	make init-vnet
	make plan-vnet
	make apply-vnet






