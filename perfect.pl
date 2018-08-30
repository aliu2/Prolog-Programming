/* DETERMINES WHETHER A NUMBER IS A PERFECT NUMBER OR NOT */

perfect(N) :- perfect(N, 1, 0).


perfect(N, N, N) :-
	!.


perfect(N, CurrDiv, CurrSum) :-
	dif(N, CurrDiv),
	0 is mod(N, CurrDiv),
	NewSum is CurrSum + CurrDiv,
	NewDiv is CurrDiv + 1,
	!,
	perfect(N, NewDiv, NewSum).


perfect(N, CurrDiv, CurrSum) :-
	dif(N, CurrDiv),
	NewDiv is CurrDiv + 1,
	!,
	perfect(N, NewDiv, CurrSum).
