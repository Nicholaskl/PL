% Created 21/10/2020

fizzbuzz(1) :- !, write('1'), nl.
fizzbuzz(N) :-
	( 	0 is mod(N,15), N1 is N-1, fizzbuzz(N1), write('fizzbuzz'), nl;
	 	0 is mod(N,3), N1 is N-1, fizzbuzz(N1), write('fizz'), nl;
		0 is mod(N,5), N1 is N-1, fizzbuzz(N1), write('buzz'), nl;
		N > 0, N1 is N-1, fizzbuzz(N1), write(N), nl
	).
