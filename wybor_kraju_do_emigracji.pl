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
/*kultura_romanska :- czy("ma to być kraj romański?").*/
kultura_slowianska :- czy("ma to być kraj słowiański?").
/*gestosc_zaludnienia_wysoka :- czy("gestość zaludnienia ma być wysoka?").
gestosc_zaludnienia_niska :- czy("gestość zaludnienia ma być niska?").*/
religia_katolicyzm :- czy("kraj ma być katolicki?").
religia_protestantyzm :- czy("kraj ma być protestancki?").
religia_prawoslawie :- czy("kraj ma byc prawosławny?").
religia_islam :- czy("kraj ma być mułzumański?").
religia_brak :- czy("kraj ma być laicki?").
/*blisko_polski :- czy("kraj ma być blisko Polski?").*/
socjalny :- czy("kraj ma być socjalny?").
dostep_do_morza :- czy("kraj ma byc z dostepem do morza?").
/*opieka_zdrowotna :- czy("interesuje cie dobra opieka zdrowotna?").*/
/*dlugie_zycie :- czy("chcesz miec wieksze szanse?").*/
/*miasto :- czy("wolisz zycie w miescie niz na wsi?").*/

lista_pytan([
	klimat_cieply, 					/*1*/
	klimat_umiarkowany,				/*2*/
	klimat_zimny,					/*3*/
	typ_rozwoju_rozwiniety,			        /*4*/
	typ_rozwoju_rozwijajacy_sie,	                /*5*/
	typ_rozwoju_nierozwiniety,		        /*6*/
	kultura_anglosaska,				/*7*/
	kultura_germanska,				/*8*/
	kultura_slowianska,				/*9*/
	religia_katolicyzm,				/*10*/
	religia_protestantyzm,			        /*11*/
	religia_prawoslawie,			        /*12*/
	religia_islam,					/*13*/
	religia_brak,					/*14*/
	socjalny,					/*15*/	
	dostep_do_morza,				/*16*/
]).

/* baza wiedzy */
albania :- 	case(klimat_cieply), 
		case(typ_rozwoju_rozwijajacy_sie),
		case(religia_islam),
		case(dostep_do_morza).
			
austria :- 	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),
		case(kultura_germanska),
		case(religia_katolicyzm),
		case(socjalny).

belgia :-       case(klimat_umiarkowany),
		case(dostep_do_morza),
		case(typ_rozwoju_rozwiniety),
		case(religia_katolicyzm),
		case(socjalny).
	
bialorus :-    case(klimat_umiarkowany),
	       case(typ_rozwoju_rozwijajacy_sie),
	       case(kultura_slowianska),
	       case(religia_prawoslawie).
			
			
bosnia_i_hercegowina :-		case(klimat_cieply), 
				case(typ_rozwoju_rozwijajacy_sie),
				case(kultura_slowianska),
				(case(religia_katolicyzm) ;
				case(religia_prawoslawie) ;
				case(religia_islam) ).
								
bulgaria :-	case(klimat_cieply), 
		case(typ_rozwoju_rozwijajacy_sie),
		case(kultura_slowianska),
		case(religia_prawoslawie),
		case(dostep_do_morza).
			
chorwacja :-	case(klimat_cieply), 
		case(typ_rozwoju_rozwijajacy_sie),
		case(kultura_slowianska),
		case(religia_katolicyzm),
		case(dostep_do_morza),
			
czarnogora :-	case(klimat_cieply), 
		case(typ_rozwoju_rozwijajacy_sie),
		case(kultura_slowianska),
		case(religia_katolicyzm).
		case(dostep_do_morza).
			
czechy :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy_sie),	
		case(kultura_slowianska),
		case(religia_katolicyzm).
			
dania :- 	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),	
		case(religia_protestantyzm),
		case(socjalny),
		case(dostep_do_morza).
			
estonia :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy_sie),
		case(religia_protestantyzm),
		case(dostep_do_morza).

finlandia :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),
		case(religia_protestantyzm),
		case(socjalny),
		case(dostep_do_morza).
			
francja :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),
		case(religia_katolicyzm),
		case(socjalny),
		case(dostep_do_morza).

grecja :-	case(klimat_cieply),
		case(typ_rozwoju_rozwijajacy_sie),
		case(religia_prawoslawie),
		case(socjalny),
		case(dostep_do_morza).

hiszpania :-	case(klimat_cieply),
		case(typ_rozwoju_rozwiniety),	
		case(religia_katolicyzm),
		case(socjalny),
		case(dostep_do_morza).
						
holandia :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),
		case(religia_protestantyzm),
		case(socjalny),
		case(dostep_do_morza).
			
irlandia :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),
		case(kultura_anglosaska),
		case(religia_katolicyzm),
		case(socjalny),
		case(dostep_do_morza).
			
islandia :-	case(klimat_zimny),
		case(typ_rozwoju_rozwiniety),	
		case(religia_katolicyzm),
		case(socjalny),
		case(dostep_do_morza).
			
liechtenstein :-	case(klimat_umiarkowany),
			case(typ_rozwoju_rozwiniety),
			case(religia_katolicyzm).
				
litwa :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy_sie),	
		case(religia_katolicyzm),
		case(dostep_do_morza).
			
luksemburg :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),
		case(religia_katolicyzm),
		case(socjalny).
			
lotwa :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy_sie),	
		case(religia_protestantyzm),
		case(dostep_do_morza).
			
macedonia :-	case(klimat_cieply),
		case(typ_rozwoju_rozwijajacy_sie),	
		case(religia_prawoslawie).
			
malta :-	case(klimat_cieply),
		case(typ_rozwoju_rozwijajacy_sie),
		case(religia_katolicyzm),
		case(dostep_do_morza).
			
moldawia :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy_sie),
		case(kultura_slowianska),
		case(religia_prawoslawie).
		
monako :-	case(klimat_cieply),
		case(typ_rozwoju_rozwiniety),	
		case(religia_katolicyzm),
		case(dostep_do_morza).
			
niemcy :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),
		case(kultura_germanska),
		(case(religia_protestantyzm);
		case(religia_katolicyzm)),
		case(socjalny),
		case(dostep_do_morza).
			
norwegia :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),
		case(religia_protestantyzm),
		case(dostep_do_morza).
			
portugalia :-	case(klimat_cieply),
		case(typ_rozwoju_rozwiniety),
		case(religia_katolicyzm),
		case(socjalny),
		case(dostep_do_morza).
			
rosja :-	case(klimat_zimny),
		case(typ_rozwoju_rozwijajacy_sie),
		case(kultura_slowianska),
		case(religia_prawoslawie).
		case(dostep_do_morza),
			
rumunia :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy_sie),	
		case(religia_prawoslawie),
		case(dostep_do_morza).

san_marino :- 	case(klimat_cieply),
		case(typ_rozwoju_rozwiniety),
		case(religia_katolicyzm).

serbia :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy_sie),
		case(religia_prawoslawie).

slowacja :- 	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy),
		case(kultura_slowianska),
		case(religia_katolicyzm).

slowenia :- 	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy),
		case(kultura_slowianska),
		case(religia_katolicyzm).
			
szwajcaria :- 	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwiniety),
		(case(religia_katolicyzm) ;
		case(religia_protestantyzm) ).
				
szwecja :- 	case(klimat_zimny),
		case(typ_rozwoju_rozwiniety),
		case(religia_protestantyzm),
		case(socjalny),
		case(dostep_do_morza).

turcja :-	case(klimat_cieply),
		case(typ_rozwoju_rozwijajacy_sie),
		case(religia_islam),
		case(dostep_do_morza).
			
ukraina :- 	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy_sie),
		case(kultura_slowianska),
		case(religia_prawoslawie),
		case(dostep_do_morza).
			
watykan :- 	case(klimat_cieply),
		case(typ_rozwoju_rozwiniety),
		case(religia_katolicyzm).
			
wegry :-	case(klimat_umiarkowany),
		case(typ_rozwoju_rozwijajacy_sie),
		case(religia_katolicyzm).
	
wielka_brytania :-	case(klimat_umiarkowany),
			case(kultura_anglosaska),
			case(religia_protestantyzm),
			case(socjalny),
			case(dostep_do_morza).
			
wlochy :- 	case(klimat_cieply),
		case(typ_rozwoju_rozwiniety),	
		case(religia_katolicyzm),
		case(socjalny),
		case(dostep_do_morza).

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
