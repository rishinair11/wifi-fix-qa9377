all: create-service

create-service: 
	chmod 777 install-service.sh && \
	./install-service.sh

run-fix: 
	chmod 777 wifi-fix.sh && \
	./wifi-fix.sh