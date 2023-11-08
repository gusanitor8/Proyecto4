# Instruciones para correr el proyecto

Una vez nos aseguremos de haber copiado el repositorio y tener prolog instalado. Podemos abrir la consola de prolog en la terminal. 

Una vez en la consola de prolog escribimos 
```prolog
consult('db.pl').
```
Para abrir el archivo con la informacion del grafo. Una vez se tenga esta información en la consola usamos el comando:

```prolog
camino(X, d, Y).
```

Para encontrar todos los caminos que llevan hacía 'd' desde un nodo inicial n que pertenezca al conjunto de nodos previamente definidos en el código. 
Para iterar sobre los resultados se usa `;`

# Resultados

```
| ?- camino(X,d,Y).

X = d
Y = [d] ? ;
X: a
Z: b
X: a
Z: c
X: c
Z: d

X = a
Y = [d,c,a] ? ;
X: a
Z: d

X = a
Y = [d,a] ? ;
X: c
Z: d

X = c
Y = [d,c] ? ;

(1 ms) no
| ?- 

```