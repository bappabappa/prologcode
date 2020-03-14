predicates
     location(string,string)
	 go
	 chkstate(string)
	 
clauses
	go:-
		writef("%-10 %2 \n","CITY","STATE"),
		fail.
	
    go:-
        location(City,State),
		chkstate(State),
		writef("%-10 %2 \n",City,State),
		fail.
		
		go.
		location("jackson","MS").
		location("Washington","DC").
		location("Raleigh","NC").
		
		chkstate("DC"):-
			fail.
		chkstate(_).
	 