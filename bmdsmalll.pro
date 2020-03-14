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
        hypothesis(Patient,Disease),!,
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
	
    symptom(Patient,runny_nose) :-
        write( "Does  ",Patient, " have a runny_nose (y/n) ? "),
        response(Reply),
        Reply= 'y'.
	
    symptom(Patient,conjunctivitis) :-
        write( "Does  ",Patient, " have a conjunctivitis (y/n) ? "),
        response(Reply),
        Reply= 'y'.
	
    symptom(Patient,cough) :-
        write( "Does  ",Patient, " have a cough (y/n) ? "),
        response(Reply),
        Reply= 'y'.
	
    symptom(Patient,body_ache) :-
        write( "Does  ",Patient, " have a body_ache (y/n) ? "),
        response(Reply),
        Reply= 'y'.
	
    symptom(Patient,chills) :-
        write( "Does  ",Patient, " have a chills (y/n) ? "),
        response(Reply),
        Reply= 'y'.
		
    symptom(Patient,sore_throat) :-
        write( "Does  ",Patient, " have a sore_throat (y/n) ? "),
        response(Reply),
        Reply= 'y'.

   symptom(Patient,sneezing) :-
        write( "Does  ",Patient, " have a sneezing (y/n) ? "),
        response(Reply),
        Reply= 'y'.


   symptom(Patient,swollen_glands) :-
        write( "Does  ",Patient, " have a swollen_glands (y/n) ? "),
        response(Reply),
        Reply= 'y'.



    hypothesis(Patient,flu) :-
        symptom(Patient,fever),
        symptom(Patient,headache),
        symptom(Patient,body_ache),
        symptom(Patient,conjunctivitis),
        symptom(Patient,chills),
        symptom(Patient,sore_throat),
        symptom(Patient,runny_nose),
        symptom(Patient,cough).    



    hypothesis(Patient,whooping_cough) :-
        symptom(Patient,cough),
        symptom(Patient,sneezing),
        symptom(Patient,runny_nose).



    response(Reply) :-
        readchar(Reply),
        write(Reply),nl.