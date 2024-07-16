# ForoHub Challenge 04 Oracle Next Education
API REST para registrar y manipular Tópicos.

# Estructura.
El proyecto utiliza DTOs para el flujo de información entre los controladores y los repositorios que gestionas la base de datos.
Las entidades se mapean con JPA Persistance y se manipulan a través de sus repositorios que a su vez heredan

# Almacenamiento de datos.
Utiliza PostgreSQL y almacena la información a través de migrations con la dependencia de Flyway
