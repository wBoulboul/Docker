#Génération des clés Artisan
generation:
	docker compose php1 php artisan key:generate
	docker compose php2 php artisan key:generate

#Execution du script de Migration de la bdd
migration:
	docker compose exec php1 php artisan migrate:fresh --seed
	docker compose exec php2 php artisan migrate:fresh --seed

#creation du
build:
	docker compose stop
	docker compose up --build -d
