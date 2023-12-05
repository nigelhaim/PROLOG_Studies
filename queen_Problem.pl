create(Position) :-
    (Row, Col) = Position,
    Row >= 0,
    Row =< 7,
    Col >= 0, 
    Col =< 7.

whiteQueen(Row1, Col1).
blackQueen(Row2, Col2).

attack(whiteQueen, blackQueen) :-
    whiteQueen =:= blackQueen;
    abs(whiteQueen - blackQueen)
