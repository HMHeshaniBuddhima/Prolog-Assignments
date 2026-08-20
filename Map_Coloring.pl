% map_coloring.pl
% Regions: a,b,c,d,e  – Colors: red, yellow, blue, green

color(red).
color(yellow).
color(blue).
color(green).

% Adjacency between regions (undirected)
adjacent(a,b).
adjacent(a,e).
adjacent(a,d).

adjacent(b,a).
adjacent(b,c).
adjacent(b,d).
adjacent(b,e).

adjacent(c,b).
adjacent(c,d).
adjacent(c,e).

adjacent(d,a).
adjacent(d,b).
adjacent(d,c).
adjacent(d,e).

adjacent(e,a).
adjacent(e,b).
adjacent(e,c).
adjacent(e,d).

% coloring([ColorA,ColorB,ColorC,ColorD,ColorE])
% order corresponds to regions [a,b,c,d,e]

coloring([A,B,C,D,E]) :-
    color(A), color(B), color(C), color(D), color(E),

    % a adjacent to b,e,d
    adjacent(a,b), A \= B,
    adjacent(a,e), A \= E,
    adjacent(a,d), A \= D,

    % b adjacent to a,c,d,e
    adjacent(b,a), B \= A,
    adjacent(b,c), B \= C,
    adjacent(b,d), B \= D,
    adjacent(b,e), B \= E,

    % c adjacent to b,d,e
    adjacent(c,b), C \= B,
    adjacent(c,d), C \= D,
    adjacent(c,e), C \= E,

    % d adjacent to a,b,c,e
    adjacent(d,a), D \= A,
    adjacent(d,b), D \= B,
    adjacent(d,c), D \= C,
    adjacent(d,e), D \= E,

    % e adjacent to a,b,c,d
    adjacent(e,a), E \= A,
    adjacent(e,b), E \= B,
    adjacent(e,c), E \= C,
    adjacent(e,d), E \= D.
