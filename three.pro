predicates
	location(string,string)
	go
	chkstate(string)
clauses

	go:-
		writef("%-10 %2\n","City","State"),
		fail.

	go:-
		location(City,State),
		chkstate(State),
		writef("%-10 %2\n",City,State),
		fail.
	go.
	location("dhaka","dh").
	location("khulna","kh").
	location("nator","na").
	
	chkstate("dh"):-
		fail.
		
	chkstate(_).