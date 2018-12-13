/* wybor_kraju_do_emigracji */
dynamic :- prawda/1.
dynamic :- nieprawda/1.

/*
cechy:
- klimat: cieply, umiarkowany, zimny
- ksztalt_terenu: gorzysty, nizinny
- typ_rozwoju: rozwinięty, rozwijający się, nierozwinięty
- kultura: anglosaska, germańska, romańska, słowiańska
- gestosc_zaludnienia: wysoka, niska
- religa_dominujaca: katolicyzm, protestantyzm, prawosławie, islam, brak_wyznania
- blisko_polski
- socjalny
- dostęp do morza
*/

/* Pytania */
klimat_cieply :- "czy klimat ma być cieply?".
klimat_umiarkowany :- "czy klimat ma być umiarkowany".
klimat_zimny :- "czy klimat ma być zimny?".
ksztalt_terenu_gorzysty :- "czy kraj ma być górzysty?".
ksztalt_terenu_nizinny :- "czy kraj ma być nizinny?".
typ_rozwoju_rozwiniety :- "czy ma byc to kraj rozwinięty?".
typ_rozwoju_rozwijajacy_sie :- "czy ma to byc kraj rozwijajacy się?".
typ_rozwoju_nierozwiniety :- "czy ma być to kraj nierozwinięty?".
kultura_anglosaska :- "czy ma to być kraj anlosaski?".
kultura_germanska :- "czy kraj ma być germański?".
kultura_romanska :- "czy ma to być kraj romański?".
kultura_slowanska :- "czy ma to być kraj słowiański?".
gestosc_zaludnienia_wysoka :- "czy gestość zaludnienia ma być wysoka?".
gestosc_zaludnienia_niska :- "czy gestość zaludnienia ma być niska?".
religa_katolicyzm :- "czy kraj ma być katolicki?".
religia_protestantyzm :- "czy kraj ma być protestancki?".
religia_prawoslawie :- "czy kraj ma byc prawosławny?".
religia_islam :- "czy kraj ma być mułzumański?".
religia_brak :- "czy kraj ma być laicki?".
blisko_polski :- "czy kraj ma być blisko Polski?".
socjalny :- "czy kraj ma być socjalny?".
dostep_do_morza :- "czy kraj ma byc z dostepem do morza?".

/* baza wiedzy */
albania :- 	prawda(klimat_cieply), 
			prawda(ksztalt_terenu_gorzysty), 
			prawda(dostep_do_morza),
			prawda(typ_rozwoju_rozwijajacy_sie),
			prawda(religia_islam).
			
austria :- 	prawda(klimat_umiarkowany),
			prawda(ksztalt_terenu_gorzysty),
			prawda(typ_rozwoju_rozwiniety),
			prawda(religa_katolicyzm),
			prawda(kultura_germanska),
			prawda(socjalny).

belgia :-       prawda(klimat_umiarkowany),
			prawda(ksztalt_terenu_nizinny),
			prawda(dostep_do_morza),
			prawda(typ_rozwoju_rozwiniety),
			prawda(religa_katolicyzm),
			prawda(socjalny).
	
bialorus :-    prawda(klimat_umiarkowany),
			prawda(ksztalt_terenu_nizinny),
			prawda(typ_rozwoju_rozwijajacy_sie),
			prawda(religa_prawosławie),
			prawda(kultura_słowiańska).
			
bosnia i hercegowina :-	prawda(klimat_cieply), 
				prawda(ksztalt_terenu_gorzysty),
				prawda(typ_rozwoju_rozwijajacy_sie),
				prawda(kultura_słowiańska),
				prawda(religa_katolicyzm),
				prawda(religa_prawosławie),
				prawda(religia_islam).
				
bulgaria :-	prawda(klimat_cieply), 
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(typ_rozwoju_rozwijajacy_sie),
			prawda(kultura_słowiańska),
			prawda(religa_prawosławie).
			
chorwacja :-	prawda(klimat_cieply), 
			prawda(ksztalt_terenu_gorzysty), 
			prawda(dostep_do_morza),
			prawda(kultura_słowiańska),
			prawda(religa_katolicyzm).
			
czarnogora :-	prawda(klimat_cieply), 
			prawda(ksztalt_terenu_gorzysty),
			prawda(dostep_do_morza),
			prawda(kultura_słowiańska),
			prawda(typ_rozwoju_rozwijajacy_sie),
			prawda(religa_katolicyzm).
			
czechy :-	prawda(klimat_umiarkowany),
			prawda(ksztalt_terenu_gorzysty),
			prawda(kultura_słowiańska),
			prawda(typ_rozwoju_rozwijajacy_sie),
			prawda(religa_katolicyzm).
			
dania :- 	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(religa_protestantyzm),
			prawda(socjalny).
			
estonia :-	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(typ_rozwoju_rozwijajacy_sie),
			prawda(religa_protestantyzm).
			
finlandia :-	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(typ_rozwoju_rozwiniety),
			prawda(religa_protestantyzm).
			
francja :-	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(religa_katolicyzm),
			prawda(typ_rozwoju_rozwiniety),
			prawda(socjalny).
			
grecja :-	prawda(klimat_cieply),
			prawda(ksztalt_terenu_gorzysty),
			prawda(dostep_do_morza),
			prawda(religa_prawosławie).
			
hiszpania :-	prawda(klimat_cieply),
			prawda(ksztalt_terenu_gorzysty),
			prawda(ksztalt_terenu_nizinny),
			prawda(dostep_do_morza),
			prawda(religa_katolicyzm).
			
holandia :-	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(typ_rozwoju_rozwiniety),
			prawda(religa_protestantyzm).
			
irlandia :-	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(typ_rozwoju_rozwiniety),
			prawda(kultura_anglosaska),
			prawda(religa_katolicyzm).
			
islandia :-	prawda(klimat_zimny),
			prawda(ksztalt_terenu_gorzysty),
			prawda(dostep_do_morza),
			prawda(typ_rozwoju_rozwiniety),
			prawda(religa_katolicyzm).
			
kazachstan :-	prawda(klimat_umiarkowany),
			prawda(ksztalt_terenu_nizinny),
			prawda(religa_prawosławie).
			
liechtenstein :-	prawda(klimat_umiarkowany),
				prawda(ksztalt_terenu_gorzysty),
				prawda(typ_rozwoju_rozwiniety),
				prawda(religa_katolicyzm).
				
litwa :-	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),	
			prawda(religa_katolicyzm).
			
luksemburg :-	prawda(klimat_umiarkowany),
			prawda(ksztalt_terenu_nizinny),	
			prawda(typ_rozwoju_rozwiniety),
			prawda(religa_katolicyzm).
			
lotwa :-	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),	
			prawda(religa_protestantyzm).
			
macedonia :-	prawda(klimat_cieply),
			prawda(ksztalt_terenu_gorzysty),
			prawda(religa_prawosławie).
			
malta :-	prawda(klimat_cieply),		
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),	
			prawda(religa_katolicyzm).
			
moldawia :-	prawda(klimat_umiarkowany),
			prawda(ksztalt_terenu_nizinny),	
			prawda(kultura_słowiańska),
			prawda(religa_prawosławie).
		
monako :-	prawda(klimat_cieply),
			prawda(ksztalt_terenu_gorzysty),
			prawda(dostep_do_morza),
			prawda(typ_rozwoju_rozwiniety),
			prawda(religa_katolicyzm).
			
niemcy :-	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),	
			prawda(typ_rozwoju_rozwiniety),
			( prawda(religa_protestantyzm);
			prawda(religa_katolicyzm) ),
			prawda(socjalny).
			
norwegia :-	prawda(klimat_umiarkowany),
			prawda(ksztalt_terenu_gorzysty),
			prawda(dostep_do_morza),
			prawda(typ_rozwoju_rozwiniety),
			prawda(religa_protestantyzm).
			
portugalia :-	prawda(klimat_cieply),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),	
			prawda(religa_katolicyzm).
			
rosja :-	prawda(klimat_zimny),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),	
			prawda(kultura_słowiańska),
			prawda(gestosc_zaludnienia_niska),
			prawda(religa_prawosławie).
			
rumunia :-	prawda(klimat_umiarkowany),
			prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(religa_prawosławie).

san_marino :- 	prawda(klimat_cieply),
			prawda(ksztalt_terenu_gorzysty),
			prawda(typ_rozwoju_rozwiniety),
			prawda(gestosc_zaludnienia_wysoka),
			prawda(religa_katolicyzm).

serbia :-	prawda(kultura_slowanska),
			prawda(ksztalt_terenu_nizinny),
			prawda(typ_rozwoju_rozwijajacy),
			prawda(religa_prawosławie).

slowacja :- prawda(klimat_umiarkowany),
			prawda(ksztalt_terenu_gorzysty),
			prawda(typ_rozwoju_rozwijajacy),
			prawda(kultura_slowanska),
			prawda(blisko_polski),
			prawda(religa_katolicyzm).

slowenia :- prawda(ksztalt_terenu_gorzysty),
			prawda(typ_rozwoju_rozwijajacy),
			prawda(kultura_slowanska),
			prawda(religa_katolicyzm).
			
szwajcaria :- 	prawda(ksztalt_terenu_gorzysty),
			prawda(typ_rozwoju_rozwiniety),
			( prawda(religa_katolicyzm);
			prawda(religa_protestantyzm) ),
				
szwecja :- 	prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(typ_rozwoju_rozwiniety),
			prawda(religa_protestantyzm),
			prawda(socjalny).

turcja :-	prawda(klimat_cieply),
			prawda(dostep_do_morza),
			(prawda(ksztalt_terenu_nizinny) ;
			prawda(ksztalt_terenu_gorzysty) ),
			prawda(religia_islam).
			
ukraina :- 	prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(kultura_slowanska),
			prawda(religa_prawosławie),
			prawda(blisko_polski).
			
watykan :- 	prawda(klimat_cieply),
			prawda(ksztalt_terenu_nizinny),
			prawda(typ_rozwoju_rozwiniety),
			prawda(gestosc_zaludnienia_wysoka),
			prawda(religa_katolicyzm).
			
wegry :-	prawda(ksztalt_terenu_nizinny),
			prawda(religa_katolicyzm).
	
wielka_brytania :- prawda(dostep_do_morza),
			prawda(ksztalt_terenu_nizinny),
			prawda(kultura_anglosaska),
			prawda(gestosc_zaludnienia_wysoka),
			prawda(religa_protestantyzm),
			prawda(socjalny).
			
wlochy :- 	prawda(klimat_cieply),
			( prawda(ksztalt_terenu_gorzysty) ;
			prawda(ksztalt_terenu_nizinny) ),
			prawda(dostep_do_morza),
			prawda(typ_rozwoju_rozwiniety),
			prawda(gestosc_zaludnienia_wysoka),
			prawda(religa_katolicyzm),
			prawda(socjalny).
			
pytanieCzy(Question) :-
        write('Czy '),
        Question,
        read(Response),
        ( (Response == yes ; Response == y)
                ->
                asserta(prawda(Question)) ;
                asserta(nieprawda(Question)), fail).
				
start :- 
			/* zadaj pytania
			wnioskuj
			*/
			
