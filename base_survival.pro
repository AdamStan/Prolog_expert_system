/*To nie działa, chyba inaczej to było zrobione
Może to nie było ':=' ani ':-', nie pamiętam, trzeba będzie 
poprosić najwyżej*/
jedzenie :- format('masz jakies jedzenie?').
zwierzeta :- format('w poblizu sa jakies zwierzeta do upolowania?').
schronienie :- format('masz schronienie?').
opal :- format('masz czym rozpalic ognisko?').
grupa :- format('jestes w grupie?').
masz_cos_cennego :- format('masz cos cennego, co chcieliby inni czlonkowie?').
jestes_slaby :- format('jestes slaby?').
uczulenie :- format('jestes na cos uczulony?').
zwierzeta_dzikie :- format('w poblizu sa jakies zwierzeta ktore moga cie zjesc?').

/***** POCZATEK *****/

how_to_survive :- hypothesize(Dead),
	write('I guess that you will die in this way: '),
	write(Dead),
	undo.
	
/* Jesli nie uda nam sie wywnioskowac "fajnej" smierci
	to dajemy naturalną */
hypothesize(smierc_z_glodu) :- smierc_z_glodu, !. /* !. means if the first rule succeeds, use it and don't try the next rule */
hypothesize(smierc_z_zimna) :- smierc_z_zimna, !.
hypothesize(smierc_ktos_cie_zabije) :- smierc_ktos_cie_zabije, !.
hypothesize(smierc_choroba) :- smierc_choroba, !.
hypothesize(smierc_naturalna).

smierc_z_glodu :-
	not(weryfikuj(jedzenie)),
	not(weryfikuj(zwierzeta)).
	
smierc_z_zimna :-
	not(weryfikuj(schronienie)),
	not(weryfikuj(opal)).

smierc_ktos_cie_zabije :-
	weryfikuj(grupa),
	weryfikuj(masz_cos_cennego),
	weryfikuj(jestes_slaby).
		
smierc_choroba :-
	weryfikuj(uczulenie);
	weryfikuj(zwierzeta_dzikie).
	
	
pytanieCzy(Question) :-
	write('Czy '),
	Question,
	read(Response),
	( (Response == yes ; Response == y)
		->
		asserta(prawda(Question)) ;
		asserta(nieprawda(Question)), fail). /* przesłanie do bazy odpowiedzi 
		fail - nie udało mi się złączyć z pytaniami w bazie 
		co to jest fail -> trzeba pokazać*/
		
:- dynamic(prawda/1, nieprawda/1). 

weryfikuj(S) :-
	(prawda(S) -> true ;
	(nieprawda(S) -> fail ; pytanieCzy(S))).
	
undo :- retract(prawda(_)),fail.
undo :- retract(nieprawda(_)),fail.
undo.
