#génération des clés Artisan
generation:
	docker compose php1 php artisan key:generate
	docker compose php2 php artisan key:generate

#execution du script de Migration de la bdd
migration:
	docker compose exec php1 php artisan migrate:fresh --seed
	docker compose exec php2 php artisan migrate:fresh --seed

