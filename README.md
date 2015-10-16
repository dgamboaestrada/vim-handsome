# vim-awesome

# Instalar

```
git clone --recursive git@github.com:dgamboaestrada/vim-awesome.git
cd vim-awesome
./install.sh
```

# Actualizar
```
git fetch origin
git pull origin master
./update.sh
```
# Comandos
Comando | Acción
------- | ------
:w | Guarda
:q | Salir
:w! | Forzar guardar
:q! | Forzar salir
:w !sudo % tee | Guardar con permisos root
h | Mueve cursor hacia la izquierda
k | Mueve cursor hacia abajo
k | Mueve cursor hacia arriba
l | Mueve cursor hacia la derecha
gg | Cursor al inicio del archivo
G | Cursor al final del archivo
control + f | Avanzar una página
control + b | Retroceder una página
$ | Cursor al final de la linea
0 | Cursor al principio de la linea
f + caracter | Posiciona cursor hacia la derecha sobre la linea actual en el primer caracte encontrado dado
F + caracter | Posiciona cursor hacia la izquierda sobre la linea actual en el primer caracter encontrado dado
i | Incsertar texto
a | Insertar texto a continuación del cursor
A | Incertar texto al final de la linea
s | Borrar e insertar en la poscion del cursor actual
r | Remplazar caracter en la posicion del cursor actual
R | Sobreescribir
o | Inserta nueva linea debajo de la linea actual
O | Inserta nueva linea arriba de la linea actual
u | Deshacer el último cambio
control + R | Rehacer el último cambio
x | Borra caracter sobre el cursor
X | Borra caracter hacia atras del cursor
dd | Borra linea actual
D | Borra texto de la linea actual desde la posicion del curzor hacia la derecha
dw | Borra palabra
cw | Cambiar palabra
yy | Copia linea actual
yw | Copia palabra
p | Pegar
P | Pegar haca atras del cursor
ma | Crear marca con la etiqueta a
'a | Ir hacia la marca con la etiqueta a
= | Identar
/ | Buscar
n | Siguiente resultado de la busqueda
N | Siguiente resultado hacia atras de la busqueda
%s/palabra/nueva palabra | Buscar y reemplazar
J | Une dos lineas
r | Leer el contenido de un archivo
. | Ejecuta ultimo comando
>> | Espaciar hacia la derecha
<< | Borrar espaciado
:! | Ejecutar comando bash
