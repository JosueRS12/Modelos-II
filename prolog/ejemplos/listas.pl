
# unificacion
# [x,y,z] = [2,3,4] #permitido
# [x,y,z] = [2,3,4,3]  no permitido

#cabeza y cola [x | xs]


#ejemplos
longitud([],0).
longitud([_|T],N):-longitud(T,N0), N is N0 + 1. 


#pertenece
pertenece(X,[X|_]):-!.
pertenece(X,[X|_]):-pertenece(X,T).

#eliminar
elimina(X,[X|T],T).
elimina(X,[H|T],[H|T1]):- elimina(X,T,T1).

#concatenar
concatenar([],L,L).
concatenar([X|T],L,[X|T1]):- concatenar(T,L,T1)
