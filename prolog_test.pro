:- dynamic case/1.
:- dynamic conclusion/1.

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

slowenia :- case(ksztalt_terenu_gorzysty),
			case(typ_rozwoju_rozwijajacy),
			case(kultura_slowianska),
			case(religia_katolicyzm).
			
szwajcaria :- 	case(ksztalt_terenu_gorzysty).
				
szwecja :- 	case(ksztalt_terenu_nizinny).

turcja :-	(case(ksztalt_terenu_nizinny) ;
			case(ksztalt_terenu_gorzysty) ).

lista_pytan([	
	klimat_cieply, 
	klimat_umiarkowany, 
	klimat_zimny, 
	ksztalt_terenu_gorzysty, 
	ksztalt_terenu_nizinny
]).

lista_odpowiedzi([
	slowenia,
	szwajcaria,
	szwecja,
	turcja
]).

pierwszy([H|T], H, T). 

ankieta(X) :- 
	pierwszy(X, Question, Tail), 
	Question, 
	read(Response), 
	( (Response == yes ; Response == y) -> asserta(case(Question)) ; true ), 
	list_empty(Tail, Ifempty),
	( not(Ifempty) -> 
		ankieta(Tail) ;
		lista_odpowiedzi(Z), pseudownioskowanie(Z) 
	).

/* Zamiast write'a to damy pseudownioskowanie, jak lista bedzie pusta*/
start :- lista_pytan(X), ankieta(X).

pseudownioskowanie(X) :-
	pierwszy(X, Wniosek, Ogon),
	write(Wniosek),
	write("\n"),
	( not(Wniosek) ->
		write(" -> False \n") ;
		write(" -> True \n"), assert(conclusion(Wniosek)) 
	),
	list_empty(Ogon, Ifempty),
	( not(Ifempty) -> 
		pseudownioskowanie(Ogon) ;
		czysczenie
	).

czysczenie :-
	retractall(conclusion(_)),
	retractall(case(_)).
	