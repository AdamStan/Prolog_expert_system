/* wybor_kraju_do_emigracji */
:- dynamic case/1.

/*
cechy:
- klimat: cieply, umiarkowany, zimny
- ksztalt_terenu: gorzysty, nizinny
- typ_rozwoju: rozwinięty, rozwijający się, nierozwinięty
- kultura: anglosaska, germańska, romańska, słowiańska
- gestosc_zaludnienia: wysoka, niska
- religia_dominujaca: katolicyzm, protestantyzm, prawoslawie, islam, brak_wyznania
- blisko_polski
- socjalny
- dostęp do morza
*/
czy(X) :- atom_concat('Czy ', X, Y), format(Y).
/* Pytania */
klimat_cieply :- czy('klimat ma być cieply?').
klimat_umiarkowany :- czy("klimat ma być umiarkowany").
klimat_zimny :- czy("klimat ma być zimny?").
/*ksztalt_terenu_gorzysty :- czy("kraj ma być górzysty?").
ksztalt_terenu_nizinny :- czy("kraj ma być nizinny?").*/
typ_rozwoju_rozwiniety :- czy("ma byc to kraj rozwinięty?").
typ_rozwoju_rozwijajacy_sie :- czy("ma to byc kraj rozwijajacy się?").
typ_rozwoju_nierozwiniety :- czy("ma być to kraj nierozwinięty?").
kultura_anglosaska :- czy("ma to być kraj anlosaski?").
kultura_germanska :- czy("czy kraj ma być germański?").
kultura_romanska :- czy("ma to być kraj romański?").
kultura_slowianska :- czy("ma to być kraj słowiański?").
/*gestosc_zaludnienia_wysoka :- czy("gestość zaludnienia ma być wysoka?").
gestosc_zaludnienia_niska :- czy("gestość zaludnienia ma być niska?").*/
religia_katolicyzm :- czy("kraj ma być katolicki?").
religia_protestantyzm :- czy("kraj ma być protestancki?").
religia_prawoslawie :- czy("kraj ma byc prawosławny?").
religia_islam :- czy("kraj ma być mułzumański?").
religia_brak :- czy("kraj ma być laicki?").
blisko_polski :- czy("kraj ma być blisko Polski?").
socjalny :- czy("kraj ma być socjalny?").
dostep_do_morza :- czy("kraj ma byc z dostepem do morza?").
opieka_zdrowotna :- czy("interesuje cie dobra opieka zdrowotna?").
dlugie_zycie :- czy("chcesz miec wieksze szanse?").
miasto :- czy("wolisz zycie w miescie niz na wsi?").

lista_pytan([
	klimat_cieply, 					/*1*/
	klimat_umiarkowany,				/*2*/
	klimat_zimny,					/*3*/
	typ_rozwoju_rozwiniety,			/*4*/
	typ_rozwoju_rozwijajacy_sie,	/*5*/
	typ_rozwoju_nierozwiniety,		/*6*/
	kultura_anglosaska,				/*7*/
	kultura_germanska,				/*8*/
	kultura_romanska,				/*9*/
	kultura_slowianska,				/*10*/
	religia_katolicyzm,				/*11*/
	religia_protestantyzm,			/*12*/
	religia_prawoslawie,			/*13*/
	religia_islam,					/*14*/
	religia_brak,					/*15*/
	blisko_polski,					/*16*/
	socjalny,						/*17*/
	dostep_do_morza,				/*18*/
	opieka_zdrowotna,				/*19*/
	dlugie_zycie,					/*20*/
	miasto							/*21*/
]).

/* baza wiedzy */
albania :- 	case(klimat_cieply), 
			case(ksztalt_terenu_gorzysty), 
			case(dostep_do_morza),
			case(typ_rozwoju_rozwijajacy_sie),
			case(religia_islam).
			
austria :- 	case(klimat_umiarkowany),
			case(ksztalt_terenu_gorzysty),
			case(typ_rozwoju_rozwiniety),
			case(religia_katolicyzm),
			case(kultura_germanska),
			case(socjalny).

belgia :-       case(klimat_umiarkowany),
			case(ksztalt_terenu_nizinny),
			case(dostep_do_morza),
			case(typ_rozwoju_rozwiniety),
			case(religia_katolicyzm),
			case(socjalny).
	
bialorus :-    case(klimat_umiarkowany),
			case(ksztalt_terenu_nizinny),
			case(typ_rozwoju_rozwijajacy_sie),
			case(religia_prawoslawie),
			case(kultura_slowianska).
			
bosnia_i_hercegowina :-	case(klimat_cieply), 
				case(ksztalt_terenu_gorzysty),
				case(typ_rozwoju_rozwijajacy_sie),
				case(kultura_slowianska),
				( case(religia_katolicyzm);
				case(religia_prawoslawie) ),
				case(religia_islam).
				
bulgaria :-	case(klimat_cieply), 
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(typ_rozwoju_rozwijajacy_sie),
			case(kultura_slowianska),
			case(religia_prawoslawie).
			
chorwacja :-	case(klimat_cieply), 
			case(ksztalt_terenu_gorzysty), 
			case(dostep_do_morza),
			case(kultura_slowianska),
			case(religia_katolicyzm).
			
czarnogora :-	case(klimat_cieply), 
			case(ksztalt_terenu_gorzysty),
			case(dostep_do_morza),
			case(kultura_slowianska),
			case(typ_rozwoju_rozwijajacy_sie),
			case(religia_katolicyzm).
			
czechy :-	case(klimat_umiarkowany),
			case(ksztalt_terenu_gorzysty),
			case(kultura_slowianska),
			case(typ_rozwoju_rozwijajacy_sie),
			case(religia_katolicyzm).
			
dania :- 	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(religia_protestantyzm),
			case(socjalny).
			
estonia :-	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(typ_rozwoju_rozwijajacy_sie),
			case(religia_protestantyzm).
			
finlandia :-	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(typ_rozwoju_rozwiniety),
			case(religia_protestantyzm).
			
francja :-	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(religia_katolicyzm),
			case(typ_rozwoju_rozwiniety),
			case(socjalny).
			
grecja :-	case(klimat_cieply),
			case(ksztalt_terenu_gorzysty),
			case(dostep_do_morza),
			case(religia_prawoslawie).
			
hiszpania :-	case(klimat_cieply),
			case(ksztalt_terenu_gorzysty),
			case(ksztalt_terenu_nizinny),
			case(dostep_do_morza),
			case(religia_katolicyzm).
			
holandia :-	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(typ_rozwoju_rozwiniety),
			case(religia_protestantyzm).
			
irlandia :-	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(typ_rozwoju_rozwiniety),
			case(kultura_anglosaska),
			case(religia_katolicyzm).
			
islandia :-	case(klimat_zimny),
			case(ksztalt_terenu_gorzysty),
			case(dostep_do_morza),
			case(typ_rozwoju_rozwiniety),
			case(religia_katolicyzm).
			
kazachstan :-	case(klimat_umiarkowany),
			case(ksztalt_terenu_nizinny),
			case(religia_prawoslawie).
			
liechtenstein :-	case(klimat_umiarkowany),
				case(ksztalt_terenu_gorzysty),
				case(typ_rozwoju_rozwiniety),
				case(religia_katolicyzm).
				
litwa :-	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),	
			case(religia_katolicyzm).
			
luksemburg :-	case(klimat_umiarkowany),
			case(ksztalt_terenu_nizinny),	
			case(typ_rozwoju_rozwiniety),
			case(religia_katolicyzm).
			
lotwa :-	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),	
			case(religia_protestantyzm).
			
macedonia :-	case(klimat_cieply),
			case(ksztalt_terenu_gorzysty),
			case(religia_prawoslawie).
			
malta :-	case(klimat_cieply),		
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),	
			case(religia_katolicyzm).
			
moldawia :-	case(klimat_umiarkowany),
			case(ksztalt_terenu_nizinny),	
			case(kultura_slowianska),
			case(religia_prawoslawie).
		
monako :-	case(klimat_cieply),
			case(ksztalt_terenu_gorzysty),
			case(dostep_do_morza),
			case(typ_rozwoju_rozwiniety),
			case(religia_katolicyzm).
			
niemcy :-	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),	
			case(typ_rozwoju_rozwiniety),
			( case(religia_protestantyzm);
			case(religia_katolicyzm) ),
			case(socjalny).
			
norwegia :-	case(klimat_umiarkowany),
			case(ksztalt_terenu_gorzysty),
			case(dostep_do_morza),
			case(typ_rozwoju_rozwiniety),
			case(religia_protestantyzm).
			
portugalia :-	case(klimat_cieply),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),	
			case(religia_katolicyzm).
			
rosja :-	case(klimat_zimny),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),	
			case(kultura_slowianska),
			case(gestosc_zaludnienia_niska),
			case(religia_prawoslawie).
			
rumunia :-	case(klimat_umiarkowany),
			case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(religia_prawoslawie).

san_marino :- 	case(klimat_cieply),
			case(ksztalt_terenu_gorzysty),
			case(typ_rozwoju_rozwiniety),
			case(gestosc_zaludnienia_wysoka),
			case(religia_katolicyzm).

serbia :-	case(caseanska),
			case(ksztalt_terenu_nizinny),
			case(typ_rozwoju_rozwijajacy),
			case(religia_prawoslawie).

slowacja :- case(klimat_umiarkowany),
			case(ksztalt_terenu_gorzysty),
			case(typ_rozwoju_rozwijajacy),
			case(kultura_slowianska),
			case(blisko_polski),
			case(religia_katolicyzm).

slowenia :- case(ksztalt_terenu_gorzysty),
			case(typ_rozwoju_rozwijajacy),
			case(kultura_slowianska),
			case(religia_katolicyzm).
			
szwajcaria :- 	case(ksztalt_terenu_gorzysty),
			case(typ_rozwoju_rozwiniety),
			( case(religia_katolicyzm);
			case(religia_protestantyzm) ).
				
szwecja :- 	case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(typ_rozwoju_rozwiniety),
			case(religia_protestantyzm),
			case(socjalny).

turcja :-	case(klimat_cieply),
			case(dostep_do_morza),
			(case(ksztalt_terenu_nizinny) ;
			case(ksztalt_terenu_gorzysty) ),
			case(religia_islam).
			
ukraina :- 	case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(kultura_slowianska),
			case(religia_prawoslawie),
			case(blisko_polski).
			
watykan :- 	case(klimat_cieply),
			case(ksztalt_terenu_nizinny),
			case(typ_rozwoju_rozwiniety),
			case(gestosc_zaludnienia_wysoka),
			case(religia_katolicyzm).
			
wegry :-	case(ksztalt_terenu_nizinny),
			case(religia_katolicyzm).
	
wielka_brytania :- case(dostep_do_morza),
			case(ksztalt_terenu_nizinny),
			case(kultura_anglosaska),
			case(gestosc_zaludnienia_wysoka),
			case(religia_protestantyzm),
			case(socjalny).
			
wlochy :- 	case(klimat_cieply),
			( case(ksztalt_terenu_gorzysty) ;
			case(ksztalt_terenu_nizinny) ),
			case(dostep_do_morza),
			case(typ_rozwoju_rozwiniety),
			case(gestosc_zaludnienia_wysoka),
			case(religia_katolicyzm),
			case(socjalny).

lista_odpowiedzi([
	wlochy, wielka_brytania, wegry, watykan, ukraina,
	turcja, szwecja, szwajcaria, slowenia, slowacja, serbia,
	san_marino, rumunia, rosja, portugalia, norwegia, niemcy,
	monako, moldawia, malta, macedonia, lotwa, luksemburg,
	litwa, liechtenstein, kazachstan, islandia, irlandia, holandia,
	hiszpania, grecja, francja, finlandia, estonia, dania, 
	czechy, czarnogora, chorwacja, belgia, bialorus, bosnia_i_hercegowina,
	bulgaria, austria, albania
]);
			
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
