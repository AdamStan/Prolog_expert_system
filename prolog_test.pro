czy(X) :- atom_concat('Czy ', X, Y), format(Y).
klimat_cieply :- czy('czy klimat ma być cieply?').
jedzenie :- format('masz jakies jedzenie?').