Airline tickets
===============

## Base de datos

### Creación de usuario para mysql
1. Tener instalado mysql. Si usan [nitrous](https://www.nitrous.io) tecleen en la consola `parts install mysql`.
2. Ingresar a mysql via consola con el siguiente comando `mysql -u root -p`, luego colocan su password del user root.
3. Teclear lo siguiente (verán esta configuración en el archivo `config/database.yml`):
```sql
	CREATE USER 'airline_user'@'localhost' IDENTIFIED BY 'air1234';
	GRANT ALL PRIVILEGES ON airlines_development.* to 'airline_user'@'localhost';
	FLUSH PRIVILEGES; 
```

### Migraciones
Una vez establecido el usuario, procedemos a correr las migraciones. Existen varios comandos útiles:
* `rake db:migrate` para correr las migraciones de las tablas.
* `rake db:migrate VERSION=0` para regresar todas las migraciones, o sea eliminar todas las tablas.
* `rake db:rollback` para regresar una migración atrás.

Recuerden que las migraciones se encuentran en `db/migrate/`

### Explicación de las tablas
1. __cities__: Ciudades (origenes y destinos)
	* name: string
2. __airplanes__: Aviones donde se viaja
	* model: string
3. __schedules__: Itinerarios de vuelo
	* departure_city: _cities_
	* arrival_city: _cities_
	* departure_time: time
	* arrival_time: time
	* airplane: _airplane_
	* price: decimal
4. __tickets__: Boletos de avión
	* departure_date: date
	* return_date: date
	* category: _category_
	* class_type: _class_type_
	* user: _user_ 
5. __schedules_tickets__: Tabla normalizada para la relación de mucho a muchos entre boleto e itinerario. Esta tabla es transparente, no setá en los models, pero si existe para modelar la relación de muchos a muchos (has_and_belongs_to_many)
	* schedule: _schedule_
	* ticket: _ticket_
6. __category__: Categorias sobre edades para descuentos
	* name: string
	* rate: decimal (éste puede ser positivo si aumentará al valor inicial o negativo si es un descuento, entre 0 y 1)
7. __class_type__: Clases de boleto que existen (económico, primera clase)
	* name: string
	* rate: decimal (éste puede ser positivo si aumentará al valor inicial o negativo si es un descuento, entre 0 y 1)
8. __users__
	* Implementará devise, _en curso_

## Gemas agregadas al proyecto
* [Bootstrap](https://github.com/twbs/bootstrap-sass) for Sass. Frontend. [Documentación](http://getbootstrap.com/)
* [Devise](https://github.com/plataformatec/devise). Usuarios. [Documentación](https://github.com/plataformatec/devise/blob/master/README.md)
* [Puma Server](http://puma.io/). Servidor web concurrente.
* [Font Awesome](https://github.com/FortAwesome/font-awesome-sass). Íconos. [Documentación](https://github.com/FortAwesome/font-awesome-sass) | [Lista de íconos](http://fortawesome.github.io/Font-Awesome/icons/)
* [Cloudinary](https://github.com/cloudinary/cloudinary_gem). Redimensionar imágenes. [Documentación](http://cloudinary.com/documentation/rails_integration#getting_started_guide)