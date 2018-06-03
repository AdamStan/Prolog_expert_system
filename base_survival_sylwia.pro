/*To nie działa, chyba inaczej to było zrobione
Może to nie było ':=' ani ':-', nie pamiętam, trzeba będzie 
poprosić najwyżej*/
jedzenie :- format('masz jakies jedzenie?').
zwierzeta :- format('w poblizu sa jakies zwierzeta do upolowania?').
schronienie :- format('masz schronienie?').
opal :- format('masz czym rozpalic ognisko?').
grupa :- format('jestes w grupie?').
masz_cos_cennego :- format('masz cos cennego, co chcieliby inni czlonkowie?').
wrog :- format('masz wroga?').
jestes_slaby :- format('jestes slaby?').
uczulenie :- format('jestes na cos uczulony?').
zwierzeta_dzikie :- format('w poblizu sa jakies zwierzeta ktore moga cie zjesc?').
owady :- format('w poblizu sa owady na ktorych jad masz uczulenie?').
trujace_grzybki :- format('zjadles grzybki niewiadomego pochodzenia?').
jadowite_pajaki :- format('ukasil cie pająk - zła wiadomoć: nie zostaniesz spidermanem...').
ubranie :- format('masz cieple ubranie?').
dolegliwosci :- format('cos ci dolega?').
surowica :- format('masz antidotum na jad?').
gory :- format('jestes w gorach?').
wspinaczka :- format('potrafisz sie wspinac?').
szczyt :- format('jestes na szczycie?').
burza :- format('zbiera sie na burze?').
medykamenty :- format('masz lekarstwa, ewentualnie zestaw pierwszej pomocy?').
bron :- format('masz bron?').
bhp :- format('potrafisz obchodzic sie z ogniem?').
uzycie_broni :- format('potrafisz uzyc tej broni?').
slady :- format('czy w poblizu widzisz slady duzego zwierzecia').



/***** POCZATEK *****/

how_to_survive :- hypothesize(Dead),
        write('I guess that you will die in this way: '),
        write(Dead),
        undo.
        
/* Jesli nie uda nam sie wywnioskowac "fajnej" smierci
        to dajemy naturalną */
hypothesize('smierc z glodu') :- smierc_z_glodu, !. /* !. means if the first rule succeeds, use it and don't try the next rule */
hypothesize('smierc z wyziebienia') :- smierc_z_zimna, !.
hypothesize('niedzwiedz cie zje') :- zjedzony_przez_niedzwiedzia, !.
hypothesize('umrzesz w pozarze') :- smierc_w_pozarze, !.
hypothesize('ktos cie zabije') :- smierc_ktos_cie_zabije, !.
hypothesize('zarazisz sie czyms i umrzesz') :- smierc_choroba, !.
hypothesize('wstrzas anafilaktyczny'):- wstrzas_anafilaktyczny, !.
hypothesize('rozplaskasz sie o skaly niczym dojrzaly melon') :- wypadek,!.
hypothesize('zostaniesz smiertelnie razony piorunem') :- piorun, !.
hypothesize('zjedzony przez zombie') :- zjedzony_przez_zombie, !.
hypothesize('najpierw przypadkowo sie zastrzelisz, a potem zostaniesz zjedzony przez zombie') :- zastrzelisz_sie, !.
hypothesize(smierc_naturalna).

smierc_z_glodu :-
        not(weryfikuj(jedzenie)),
        not(weryfikuj(zwierzeta)),
        weryfikuj(jestes_slaby).
        
smierc_z_zimna :-
        not(weryfikuj(schronienie)),
        not(weryfikuj(opal)),
        not(weryfikuj(ubranie)).
zjedzony_przez_niedzwiedzia :-
                            weryfikuj(schronienie),
                            weryfikuj(zwierzeta_dzikie),
                            weryfikuj(slady),
                            weryfikuj(jestes_slaby).
smierc_w_pozarze :-
                 weryfikuj(opal),
                 not(weryfikuj(bhp)).

smierc_ktos_cie_zabije :-
        weryfikuj(grupa),
        weryfikuj(masz_cos_cennego),
        weryfikuj(jestes_slaby);
        weryfikuj(grupa),
        weryfikuj(wrog),
        weryfikuj(jestes_slaby).
                
smierc_choroba :-
        weryfikuj(uczulenie),
        weryfikuj(zwierzeta_dzikie),
        weryfikuj(dolegliwosci),
        not(weryfikuj(medykamenty)).
        
wstrzas_anafilaktyczny :-
                       weryfikuj(uczulenie),
                       weryfikuj(owady);
                       weryfikuj(jadowite_pajaki),
                       not(weryfikuj(surowica)),
                       weryfikuj(trujace_grzybki).

wypadek :-
        weryfikuj(gory),
        not(weryfikuj(wspinaczka)).
piorun :-
       weryfikuj(gory),
       weryfikuj(wspinaczka),
       weryfikuj(szczyt),
       weryfikuj(burza).
zjedzony_przez_zombie :-
                      weryfikuj(jestes_slaby),
                      not(weryfikuj(grupa)),
                      not(weryfikuj(bron)).
zastrzelisz_sie :-
                weryfikuj(bron),
                not(weryfikuj(uzycie_broni)).
        
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