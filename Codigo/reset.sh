#!/bin/bash

verde="\e[32m"
negrita="\e[1m"
normal="\e[0m"

echo -e "$verde $negrita"
echo -e "Borrando db..."
echo -e "$normal"
rm db.sqlite3
echo -e "$verde $negrita"
echo -e "Borrando migrations..."
echo -e "$normal"
rm truco/migrations/0*

echo -e "$verde $negrita"
echo -e "Creando bd nueva y haciendo migrations"
echo -e "$normal"
python manage.py makemigrations && python manage.py migrate

echo -e "$verde $negrita"
echo -e "Iniciando mazo"
echo -e "$normal"
python manage.py shell < iniciar.py

echo -e "$normal"