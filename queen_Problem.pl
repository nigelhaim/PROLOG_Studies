create(Position) :-
    (Row, Col) = Position,
    Row >= 0,
    Row =< 7,
    Col >= 0, 
    Col =< 7.
    
attack((Row1, Col1), (Row2, Col2)) :-
    Row1 =:= Row2;
    Col1 =:= Col2;
    abs(Row1 - Row2) =:= abs(Col1 - Col2).