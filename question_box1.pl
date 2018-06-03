okno_pytanie(Question) :-
	new(D, dialog('Question')),
	send(D, append, new(text(Question))),
	send(D, append, button(yes, message(@prolog, truth, Question, D)) ),
	send(D, append, button(no, message(@prolog, lie, Question, D)) ),
	get(D, confirm, val),
	free(D).

	
truth(Name, Window) :-
	write('Parameters: '),
	write(Name),
	write(' function for yes'),
	free(Window).
lie(Name, Window) :-
	write('Parameters: '),
	write(Name),
	write(' function for no'),
	free(Window).