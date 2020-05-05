findLast(X, [X]).
findLast((X), [_|H]) :- findLast(X,H). 

hasil:- findLast((X), [_|H]),
    findLast(Y),
    write(Y).

findLast(y).
findLast(X, Yogi).
