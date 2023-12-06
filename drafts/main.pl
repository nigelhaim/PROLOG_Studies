/*  File:    load.pl
    Purpose: Load my program
*/

say_hi:-
    write('What is your name? '),
    read(X),
    write('Hi '),
    write(X).