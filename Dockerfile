FROM amazoncorretto:21
# La imágen de la que parto. Nunca empiezo de cero. Así ya tengo java trabajando y todas las dependencias

WORKDIR /java-test  
# WORKDIR crea una carpeta nueva que se llama java-test en la raíz del sistema de ficheros
# si creo ./java-test es crear una carpeta java-test en el directorio en el que esté

COPY /Main.java ./Main.java
# Copiar mi fichero alli

RUN javac Main.java
# Ejecuta este comando en el contenedor

CMD [ "java", "Main" ]


