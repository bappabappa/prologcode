predicates
     location(string,string)
	 go
	 
clauses
    go:-
       location(City,State),
		writef("%-10 %2 \n",City,State),
		fail.
		
		go.
		location("jackson","MS").
		location("Washington","DC").
		location("Raleigh","NC").
	 