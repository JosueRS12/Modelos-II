
inord( a(OP,HI,HD) ):- write('('),inord(HI),write(OP),inord(HD),write(')').
inord(x):write(X).


posord( a(OP,HI,HD) ):- posord(HI),write(' '),posord(HD),write(' '),write(OP).
posord(x):write(X).

preord( a(OP,HI,HD) ):- write(OP),write(' '),preord(HI),write(' '),preord(HD)
preord(x):write(X).
