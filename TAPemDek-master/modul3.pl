kali(X,1,X):-!.
kali(X,Y,Z):-K is Y-1, kali(X,K,Z1), Z is X+Z1.

volume:-nl,
    pertama(X),
    Y is (1),
    R is (X*X*X),
    write(R).

