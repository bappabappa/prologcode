domains
	name,password = symbol
	
predicates
	getinput(name,password)
	logon
	user(name,password)
	
clauses
		logon :-
			clearwindow,
			getinput(_,_),
			write("you are now logged on."),nl.
			
		logon :-
			write("Sorry, you are not paraitted access."),nl.
			
		getinput(Name, Password) :-
				write("please enter your name: "),
				readln(Name),nl,
				write("please enter password: "),
				readln(Password),nl,
				user(Name,Password).
				
			user(jhon,superman).
			user(sue,happy).
			user(bill,bigfoot).
				