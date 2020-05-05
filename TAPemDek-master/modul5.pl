linearList([],[]).
linearList(H,[H]) :- not(is_list(H)).
linearList([H|T],Z):- linearList(H,X), linearList(T,Y), append(X,Y,Z).

program :- 
    linearList1(X),
    linearList2(Y),
    write(X),
    write(" "),
    write(Y).

linearList1(setya).
linearList2(rahadi).
