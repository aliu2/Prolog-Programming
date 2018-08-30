/* PROLOG PROGRAM FOR A FAMILY TREE */


/* FACTS */

male(george).
male(david).
male(georgejr).
male(scott).
male(michael).


female(noreen).
female(edel).
female(susan).
female(siobhan).
female(jennifer).
female(joanne).
female(jessica).
female(clara).
female(laura).
female(anna).


parents(george, noreen, david).
parents(george, noreen, jennifer).
parents(george, noreen, georgejr).
parents(george, noreen, scott).
parents(george, noreen, joanne).
parents(david, edel, jessica).
parents(david, edel, clara).
parents(david, edel, michael).
parents(georgejr, susan, laura).
parents(scott, siobhan, anna).



/* RULES */

father(X, Y) :- 
	parents(X, _, Y).


mother(X, Y) :- 
	parents(_, X, Y).


grandfather(X, Y) :- 
	father(X, Z),
	father(Z, Y).

grandfather(X, Y) :- 
	father(X, Z), 
	mother(Z, Y).


grandmother(X, Y) :- 
	mother(X, Z), 
	father(Z, Y).

grandmother(X, Y) :- 
	mother(X, Z), 
	mother(Z, Y).


brother(X, Y) :- 
	father(Z, X), 
	father(Z, Y), 
	male(X), 
	dif(X, Y).


sister(X, Y) :- 
	father(Z, X), 
	father(Z, Y), 
	female(X), 
	dif(X, Y).


uncle(X, Y) :- 
	father(Z, Y), 
	brother(X, Z), 
	male(X).

uncle(X, Y) :- 
	mother(Z, Y), 
	brother(X, Z), 
	male(X).


aunt(X, Y) :- 
	father(Z, Y), 
	sister(X, Z), 
	female(X).

aunt(X, Y) :- 
	mother(Z, Y), 
	sister(X, Z), 
	female(X).


cousin(X, Y) :- 
	uncle(Z, Y), 
	parents(Z, _, X).

cousin(X, Y) :- 
	aunt(Z, Y), 
	parents(_, Z, X).
