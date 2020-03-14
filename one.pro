predicates
	location(string,string)
	go
clauses
	go:-
		location(City,State),
		writef("%-10 %2 \n",City,State),
		fail.
		
		go.
		location("dhaka","DH").
		location("khulna","KH").
		location("nator","NH").