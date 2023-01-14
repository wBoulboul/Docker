dokcom = docker compose
dokex = $(dokcom) exec

#Génération des clés Artisan
generation:
	$(dokex) php1 php artisan key:generate
	$(dokex) php2 php artisan key:generate

#Execution du script de Migration de la bdd
migration:
	$(dokex) php1 php artisan migrate:fresh --seed
	$(dokex) php2 php artisan migrate:fresh --seed

#build automatique
build:
	$(dokcom) stop
	$(dokcom) up --build -d
	make generation