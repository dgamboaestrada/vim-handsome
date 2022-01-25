# Basic vim commands.

Comando | Acción
------- | ------
vim file1 | Arranca vim editando el archivo `file1`
i   | Inserta texto antes del cursor
a   | Inserta texto después del cursor
ESC | Vuelve a modo comando
x   | Borra el caracter actual
dd  | Borra una línea
h o Flecha izquierda    | Mueve el cursor un caracter a la izquierda
j o Flecha abajo        | Mueve el cursor una línea hacia abajo
k o Flecha arriba       | Mueve el cursor una línea hacia arriba
l o Flecha derecha      | Mueve el cursor un caracter a la derecha
:w  | Guarda el archivo
:q  | Termina y cierra si no hubo cambios
f2  | Muestra árbol de archivos

## Avanzado

### Insertando texto (modo de inserción)
Comando | Acción
------- | ------
A   | Inserta texto al final de la línea actual
I   | Inserta texto antes del primer caracter (no espacio) de la línea actual
o   | Abre una nueva línea después de la actual
O   | Abre una nueva línea antes de la actual
r   | Remplaza el caracter actual
R   | Remplaza el caracter actual y los siguientes hasta presionar ESC o terminar la línea

### Modificando texto
Comando | Acción
------- | ------
X   | Borra el caracter antes del cursor
nx  | Borra n caracteres
ndd | Borra n líneas
dw  | Borra la palabra actual
ndw | Borra n palabras
D   | Borra desde el cursor hasta el final de la línea
dL  | Borra desde el cursor hasta el final de la pantalla
dG  | Borra desde el cursor hasta el final del documento
cw  | Reemplaza la palabra actual con nuevo texto
J   | Junta la línea actual con la siguiente
~ (tilde)   | Cambia may/min del caracter actual
u   | Deshacer el último cambio de texto
U   | Deshacer los cambios en la línea actual
. (punto)   | Repite el último cambio de texto
>>  | Mueve la línea actual a la derecha un tabulador
<<  | Mueve la línea actual a la izquierda un tabulador

### Copiar y pegar texto
Comando | Acción
------- | ------
Y o yy  | Copia la línea actual
nyy | Copia n líneas desde la actual
yw  | Copia la palabra actual
p   | Pega después del cursor
P   | Pega antes del cursor

### Buscando y reemplazando texto (en modo de comandos)
Comando | Acción
------- | ------
/texto  | Busca texto hacía adelante en el documento
?texto  | Busca texto hacía atrás en el documento
n       | Repite búsqueda a la siguiente ocurrencia
N       | Repite búsqueda a la siguiente ocurrencia, invierte dirección
:s/viejo/nuevo  | Sustituye la primera ocurrencia de 'viejo' a 'nuevo' en la línea actual
:s/viejo/nuevo/g    | Sustituye todas las ocurrencias de 'viejo' a 'nuevo' en la línea actual
:%s/viejo/nuevo/g   | Sustituye todas las ocurrencias de 'viejo' a 'nuevo' en todo el documento
:s/viejo/nuevo/g/c  | Sustituye todas las ocurrencias de 'viejo' a 'nuevo' en todo el documento y pregunta por confirmación
&   | Repite el último comando de sustitución 's'

### Movimiento del cursor
Comando | Acción
------- | ------
$   | Fin de la línea
0 (cero) | Inicio de la línea
w   |Adelante una palabra
W   | Adelante una palabra incluyendo puntuación
b   | Atrás una palabra
B   | Atrás una palabra incluyendo puntuación
e   | Al final de la palabra actual
E   | Al final de la palabra actual incluyendo puntuación
n-  | Arriba n líneas, primer caracter no espacio
n+  | Abajo n líneas, primer caracter no espacio
H   | Primera línea de la pantalla actual
M   | Línea a mitad de la pantalla actual
L   | Última línea de la pantalla actual
ma | Crear marca con la etiqueta a
'a | Ir hacia la marca con la etiqueta a

### Navegación (Presionar <ctrl.> (^) y la tecla indicada)
Comando | Acción
------- | ------
^h (Ctrl + h)   | Cambia el foco. Ventana izquierda. (árbol de archivos)
^l (Ctrl + l)   | Cambia el foco. Ventana derecha. (Contenido del archivo)
^p (Ctrl + p)   | Navega entre archivos abiertos (Preferente estar en ^l)

### Movimientos de paginación (Presionar <ctrl.> (^) y la tecla indicada)
Comando | Acción
------- | ------
^f  | Adelante una pantalla
^b  | Atrás una pantalla
^d  | Adelante media pantalla
^u  | Atrás media pantalla
gg  | Cursor al inicio del archivo
1G  | Moverse a la línea 1
nG  | Moverse a la línea n
G   | Moverse a la última línea

### Terminando y cerrando
Comando | Acción
------- | ------
:w | Guarda cambios
:q! | Termina y cierra sin grabar cambios
:wq | Termina y guarda documento
:wq nuevoArchivo    | Termina y guarda documento con el nombre 'nuevoArchivo'
:x  | Termina y guarda documento
:qall | Termina y cierra todas las ventanas
:w !sudo tee % | Guardar archivo con permisos root
:bufdo bd | Cerrar todos los buffers
:bufdo w | Guardar todos los buffers

### Números y rangos
Comando | Acción
------- | ------
Números | Prácticamente todos los comandos soportan el ser precedidos por un número que repetira el comando el número de veces indicado. Ejemplos: 5h (mueve el cursor 5 posiciones a la izquierda), 10yw (Copia las siguientes 10 palabras), 15dd (Elimina los siguientes 15 renglones),  4X (Elimina los cuatro caracteres previos del cursor).
Rangos  | Prácticamente todos los comandos en modo de última línea (: dos puntos) soportan el ser precedidos por un rango de líneas que repetira el comando en las líneas (inclusive) indicadas. Ejemplos: `:3,10d` (Borra las líneas de la 3 a la 10) `:.,20yy` (Copia de la línea actual (. punto) a la 20) `:.,$s/viejo/nuevo/g` (Busca y reemplaza la cadena 'viejo' por 'nuevo' desde la línea actual a la última ($)), `:%s/viejo/nuevo/g/c (Busca y reemplaza la cadena 'viejo' por 'nuevo' en todo el documento y pide por confirmación, % es equivalente a 1,$)

### Dividir ventanas (No hay límite de ventanas)
Comando | Acción
------- | ------
:split  | Divide el documento en dos ventanas horizontales con el mismo archivo y las mismas líneas en cada ventana
:vsplit | Divide el documento en dos ventanas verticales con el mismo archivo y las mismas líneas en cada ventana
:split archivo2 | Divide el documento en dos ventanas horizontales con el archivo inicialmente cargado en una ventana y el 'archivo2' en la otra
:8split archivo2    | Divide el documento en dos ventanas horizontales con el archivo inicialmente cargado en una ventana y el 'archivo2' en la otra con una altura de 8 líneas.
Ctrl + W (dos veces)    | Cambia el foco entre ventanas.
:close  | Cierra la ventana actual
:only   | Cierra todas las ventanas dejando solo la actual

### Estableciendo opciones
Comando | Acción
------- | ------
:set    | Muestra las opciones establecidas actualmente
:set all    | Muestra todas las posibles opciones
:set opcion | Comienza o inicio de la opción
:set noopcion   | Termina o quita la opción
:set nu | Opción que permite mostrar numeración de líneas
:set nonu   | Quita la numeración de líneas
:set ro | read only, archivo en modo de solo lectura
:set tabstop=6  | Establece el salto de tabulador a 6 espacios

### Otros
Comando | Acción
------- | ------
=  | Identar
s  | Borrar e insertar en la posición del cursor actual (desde modo normal pasándolo a insert)
:! | Ejecutar comando bash

### Shortcuts
Comando | Acción
------- | ------
Ctrl-A | Incrementa el siguiente número
Ctrl-X | Decrementa el siguiente número
