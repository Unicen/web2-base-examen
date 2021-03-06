# Examen Final 17/09/2020

## Entrega
La entrega del examen es utilizando **el mismo repositorio git donde fue clonado este proyecto** o  **adjuntando un archivo comprimido a la dirección de correo brindada**. Incluso los archivos extras para la teoría (adjuntos) se deben colocar dentro de la carpeta `adjuntos_examen/` y subir al repositorio.

### Entrega por GIT (Opcional) 
Una vez clonado el repositorio, se debe realizar un **branch** con el nombre `{sede}-{apellido}` (sin espacios ni caracteres especiales ni tildes).

Por ejemplo, para el **Alumno de Rauch Perez Alejandro**:
* `git checkout -b rauch-perez`

### Push
Una vez terminado el examen, se debe commitear y pushear a la rama del alumno/a:
1. `git add .`
2. `git commit -m "entrega final"`
3. `git push -u origin rauch-perez`

En caso de que por alguna razón no pueda pushear al repo, se debe guardar todo el examen en un archivo comprimido y enviar al mail de la cátedra: `web2@alumnos.exa.unicen.edu.ar`.

## DB
Para importar la base de datos se deben seguir estos pasos

1. Entrar a phpMyAdmin: `http://localhost/phpmyadmin`
2. Crear una nueva base de datos con el nombre `db_covid`
3. Entrar a la base de datos nueva e ir a "importar" en el menu superior
4. Importar la base de datos seleccionando el archivo desde `database/db_covid.sql`

# Importante sobre la corrección
Hacer el examen como si fuese en papel. No importa si corre o no. No evaluamos que el programa "compile", miramos el código. Esto es importante para no perder tiempo arreglando bugs que a veces no tienen demasiada importancia en la resolución del examen.

Suerte :)

