#hechos
humano('socrates').
humano('descartes').
humano('platon').

#regla
mortal(x):-humano(x).
