mujer(ana).
mujer(mari).
mujer(alondra).
mujer(noelya).
mujer(suri).
mujer(lupe).
mujer(rosa).
mujer(ximena).
mujer(diana).
mujer(karen).

hombre(jose). 
hombre(felix).
hombre(fernando).
hombre(javier).
hombre(manuel).
hombre(salvador).
hombre(eduardo).
hombre(juan).
hombre(sergio).
hombre(ernesto).
hombre(raul).

madre(ana, mari).
madre(ana, alondra).
madre(alondra, noelya).
madre(noelya, suri).
madre(noelya, raul).
madre(karen, ernesto).

padre(javier, mari).
padre(javier, alondra).
padre(eduardo, ernesto).
padre(eduardo, salvador).
padre(juan, raul).
padre(raul, jose).
padre(jose, fernando).

abuelo(X) :- hombre(X) , padre(X, Y) , (padre(Y, Z) ; madre(Y, Z)).
%abuelo(X).

abuela(X) :- mujer(X) , madre(X, Y) , (padre(Y, Z) ; madre(Y, Z)).
%abuela(X).

persona(X) :- hombre(X) ; mujer(X).
%persona(X).

nieto(Z) :- (madre(X, Y) ; padre(X, Y)) , (padre(Y, Z) ; madre(Y, Z)), hombre(Z).
%nieto(Z).
nieta(Z) :- (madre(X, Y) ; padre(X, Y)) , (padre(Y, Z) ; madre(Y, Z)), mujer(Z).
%nieta(Z).

hermanos(X, Y) :- hombre(X), hombre(Y), padre(A, X), padre(A, Y).
%hermanos(X, Y).

hermanas(X, Y) :- mujer(X), mujer(Y), padre(A, X), padre(A, Y).
%hermanas(X, Y).

pareja(X, Y) :- padre(X, Z) , madre(Y, Z).
%pareja(X, Y).

 

