% Definición del grafo dirigido
grafo([a, b, c, d], [(a, b), (a, c), (a, d), (c, d)]).

% Predicado para buscar un camino en el grafo
camino(X, Y, Camino) :-
    grafo(_, Arcos),          % Obtenemos los arcos del grafo
    camino(X, Y, Arcos, [], Camino).

% Caso base: encontramos un camino
camino(X, X, _, Camino, [X|Camino]).

% Caso recursivo: buscamos un camino
camino(X, Y, Arcos, Visitados, Camino) :-
    member((X, Z), Arcos),          % Elegimos un arco (X, Z)
    write('X: '), write(X), nl,
    write('Z: '), write(Z), nl,
    \+ member(Z, Visitados),      % Z no debe estar en los visitados    
    camino(Z, Y, Arcos, [X|Visitados], Camino).




