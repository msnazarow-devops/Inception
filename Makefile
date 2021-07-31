.PHONY: all clean fclean re

all:
	docker-compose  -f ./srcs/docker-compose.yml --env-file ./srcs/.env up --build -d 
clean:
	docker-compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down -v 
	docker container prune -f
fclean: clean
	sudo rm -rf inception/*

re: fclean all