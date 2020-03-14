domains
		disease,indication = symbol
		Patient, name = string
predicates
		hypothesis(string,disease)
		symptom(name,indication)
		response(char)
		go
clauses
		go:-
		write("what is the patient name??"),
		readln(Patient),
		hypothesis(Patient,Disease),
		write(Patient," has ",Disease,"."),nl.
		
		go:-
		write("sorry!!! i'm not able to give a solution.."),nl.
		
	symptom(Patient,fever):-
			write("does ",Patient,"has fever(y/n)?"),
			response(Reply),
			Reply='y'.
	symptom(Patient,swollen_glands):-
			write("does ",Patient,"has swollen_glands(y/n)?"),
			response(Reply),
			Reply='y'.
			
	 symptom(Patient,headache) :-
        write( "Does  ",Patient, " have a headache (y/n) ? "),
        response(Reply),
        Reply= 'y'.
	
	hypothesis(Patient,mumps):-
			symptom(Patient,fever),
			symptom(Patient,swollen_glands).
			
	hypothesis(Patient,flu) :-
        symptom(Patient,fever),
        symptom(Patient,headache).
	
	response(Reply):-
		readchar(Reply),
		write(Reply),nl.