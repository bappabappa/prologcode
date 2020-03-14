domains
	X,Y,F,M,Z, jack,helen,jess,lily,simon=symbol
	
predicates

		male(symbol)
	    female(symbol)
		
		parent(symbol,symbol)
		father(symbol,symbol)
		mother(symbol,symbol)
		grandfather(symbol,symbol) 
		
clauses

		male(jack).
		male(simon).
		female(helen).
		female(jess).
		female(lily).
		
		parent(jack,jess).
		parent(jack,lily).
		parent(helen,lily).
		parent(jess,simon).
		
		father(X,Y):-
					parent(X,Y),
					male(X).
					
		mother(X,Y):-
					parent(X,Y),
					female(X).
					
		grandfather(X,Y):-
					parent(X,Z),
					parent(Z,Y),
					male(X).
					
					
					
		