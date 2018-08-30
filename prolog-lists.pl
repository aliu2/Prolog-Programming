/* myHead(X, A) returns true if X is the first element of list A */
myHead(X, [X|_]).


/* myElem(X, A) returns true if X is an element of list A */
myElem(X, [X|_]).
myElem(X, [_|Tail]) :-
	myElem(X, Tail).


/* myTail(A, B) returns true if list A is in the tail of list B */
myTail(X, [_|X]).


/* myLast(X, A) returns true if X is the last element of list A */
myLast(X, [X]).
myLast(X, [_|T]) :-
	myLast(X, T).


/* myAppend(A, B, C) returns true if list C is list B appended to the end of list A */
myAppend([], L, L).
myAppend([X|Tail], L2, [X|Result]) :-
	myAppend(Tail, L2, Result).


/* myDelete(X, A, B) returns true if list B is list A with the first occurence of X removed */
myDelete(X, [X|T], T).
myDelete(X, [H|T], [H|R]) :-
	myDelete(X, T, R).
