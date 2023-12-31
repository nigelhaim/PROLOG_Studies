pending :- 
    current_prolog_flag(argv, ['--all'|_]).

:- begin_tests(create_tests).
    
    test(create_in_center, condition(true)) :- 
        create((3,3)).

    test(valid_position, condition(true)) :- 
        create((2,2)).
    
    test(must_have_positive_row, [fail, condition(true)]) :- 
        create((-2,2)).

    test(row_smaller_than_board_size, [fail, condition(true)]) :-
        create((8,4)).
    
    test(must_have_positive_column, [fail, condition(true)]) :- 
        create((2,-2)).
    
    test(column_smaller_than_board_size, [fail, condition(true)]) :-
        create((4,8)).

:- end_tests(create_tests).


:- begin_tests(attack_tests).

    test(cant_attack, [fail, condition(true)]) :-
        attack((2,4), (6,6)).
    
    test(attack_on_same_row, condition(true)) :- 
        attack((2,4), (2,6)).
    
    test(attack_on_same_column, condition(true)) :- 
        attack((4,5), (2,5)).

    test(attack_diagnoal_one, condition(true)) :-
        attack((2,2), (0,4)).

    test(attack_diagnoal_two, condition(true)) :-
        attack((2,2), (3,1)).

    test(attack_diagnoal_three, condition(true)) :-
        attack((2,2), (1,1)).

    test(attack_diagnoal_four, condition(true)) :-
        attack((2,2), (5,5)).

:- end_tests(attack_tests).