domains
    disease,indication = symbol
    Patient,name = string

predicates
    hypothesis(string,disease)
    symptom(name,indication)
    response(char)
    go
    go_once
    repeat
	
clauses
    go:-
		repeat,
		go_once,
		nl,
		write("Would you like to try again(y/n)"),
		response(Reply),
		Reply='n'.
		
	go.
	
	repeat.
	repeat:-
		repeat.
	
	go_once:-
        write("What is the patient 's name? "),
        readln(Patient),
        hypothesis(Patient,Disease),
        write(Patient," probably has  ",Disease,"."),nl,
		write("-------000--------"),nl.

    go_once:-
        write("Sorry, I don't seem to be able to"),nl,
        write("diagnose the disease."),nl,
		write("-------000--------"),nl.
		
		
	symptom(Patient,fever) :-
        write( "Does  ",Patient, " have a fever (y/n) ? "),
        response(Reply),
        Reply= 'y'.

    symptom(Patient,rash) :-
        write( "Does  ",Patient, " have a rash (y/n) ? "),
        response(Reply),
        Reply= 'y'.

    symptom(Patient,headache) :-
        write( "Does  ",Patient, " have a headache (y/n) ? "),
        response(Reply),
        Reply= 'y'.

		
	hypothesis(Patient,coronavirus) :-
        symptom(Patient,fever),
        symptom(Patient,headache).
		
		
	hypothesis(Patient,whooping_cough) :-
	    symptom(Patient,fever),
        symptom(Patient,rash).
      
        
	 response(Reply) :-
        readchar(Reply),
        write(Reply),nl.
		
		
		
		
		
		
		
		
		
