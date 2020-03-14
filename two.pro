predicates
	location(string,string)
	go
clauses
	go:-
		
		writef("%-10 %2 \n "City","State"),
		fail.
	go:-
		location(City,State),
		writef("%-10 %2 \n",City,State),
		fail.
	go.
	location("dhaka","dh").
	location("khulna","kh").
	location("nator","na").