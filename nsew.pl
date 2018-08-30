/* PROLOG PROGRAM MODELLING A 5X4 GRID AND RETURNING DIRECTIONS FOR NORTH, SOUTH, EAST, WEST, */
/* NORTH-EAST, SOUTH-EAST, SOUTH-WEST AND NORTH-WEST */


/* FACTS */


/* ROW1 */
row(a, b).
row(b, c).
row(c, d).
row(d, e).

/* ROW2 */
row(f, g).
row(g, h).
row(h, i).
row(i, j).

/* ROW3 */
row(k, l).
row(l, m).
row(m, n).
row(n, o).

/* ROW4 */
row(p, q).
row(q, r).
row(r, s).
row(s, t).


/* COL1 */
column(a, f).
column(f, k).
column(k, p).

/* COL2 */
column(b, g).
column(g, l).
column(l, q).

/* COL3 */
column(c, h).
column(h, m).
column(m, r).

/* COL4 */
column(d, i).
column(i, n).
column(n, s).

/* COL5 */
column(e, j).
column(j, o).
column(o, t).


/* RULES */

north(X, Y) :- column(X, Y).                    /* Base case for north */
north(X, Y) :- column(X, Z), north(Z, Y).       /* Recursive case for north */

west(X, Y) :- row(X, Y).                        /* Base case for west */
west(X, Y) :- row(X, Z), west(Z, Y).            /* Recursive case for west */ 

east(X, Y) :- west(Y, X).                       /* Conditional rule for east */

south(X, Y) :- north(Y, X).                     /* Conditional rule for south */

north-west(X, Y) :- west(X, Z), north(Z, Y).    /* Conditional rule for north-west */

north-east(X, Y) :- east(X, Z), north(Z, Y).    /* Conditional rule for north-east */

south-east(X, Y) :- north-west(Y, X).           /* Conditional rule for north-west */

south-west(X, Y) :- north-east(Y, X).           /* Conditional rule for north-east */
