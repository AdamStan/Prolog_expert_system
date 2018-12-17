:- dynamic case/1.

list_empty(List, Empty) :-
    length(List, Len),
    (   Len == 0
    ->  Empty = true
    ;   Empty = false).


czy(X) :- atom_concat('Czy ', X, Y), format(Y).
klimat_cieply :- czy('klimat ma być cieply?').
klimat_umiarkowany :- czy("klimat ma być umiarkowany").
klimat_zimny :- czy("klimat ma być zimny?").
ksztalt_terenu_gorzysty :- czy("kraj ma być górzysty?").
ksztalt_terenu_nizinny :- czy("kraj ma być nizinny?").

lista_pytan([	
	klimat_cieply, 
	klimat_umiarkowany, 
	klimat_zimny, 
	ksztalt_terenu_gorzysty, 
	ksztalt_terenu_nizinny
]).

pierwszy([H|T], H, T). 

ankieta(X) :- 
	pierwszy(X, Question, Tail), 
	Question, 
	read(Response), 
	( (Response == yes ; Response == y) -> asserta(case(Question)) ; retract(case(adam)) ), 
	list_empty(Tail, Ifempty),
	( not(Ifempty) -> 
	ankieta(Tail) ;
	write('lista jest juz pusta') ).

/* Zamiast write'a to damy wnioskowanie, jak lista bedzie pusta*/
start :- lista_pytan(X), ankieta(X).