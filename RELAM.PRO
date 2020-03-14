domains
	X,Y,Z,F,M,jack,oliver,ali,james,simon,harry,helen,sophie,jess,lily=symbol

predicates



	male(symbol)
	female(symbol)

	parent_of(symbol,symbol)
	 
	father_of(symbol,symbol)
	mother_of(symbol,symbol)
	
	grandfather_of(symbol,symbol)
	grandmother_of(symbol,symbol)
	
	sister_of(symbol,symbol)
	sister_of(symbol,symbol)
	
	aunt_of(symbol,symbol)
	
	brother_of(symbol,symbol)
	brother_of(symbol,symbol)
	
	uncle_of(symbol,symbol)
	
	ancestor_of(symbol,symbol)
	ancestor_of(symbol,symbol)


clauses 

	male(jack).
	male(oliver).
	male(ali).
	male(james).
	male(simon).
	male(harry).
	female(helen).
	female(sophie).
	female(jess).
	female(lily).
	 
	parent_of(jack,jess).
	parent_of(jack,lily).
	parent_of(helen, jess).
	parent_of(helen, lily).
	parent_of(oliver,james).
	parent_of(sophie, james).
	parent_of(jess, simon).
	parent_of(ali, simon).
	parent_of(lily, harry).
	parent_of(james, harry).

	father_of(X,Y):- male(X),
	    parent_of(X,Y).
	 
	mother_of(X,Y):- female(X),
	    parent_of(X,Y).
	 
	grandfather_of(X,Y):- male(X),
	    parent_of(X,Z),
	    parent_of(Z,Y).
	 
	grandmother_of(X,Y):- female(X),
	    parent_of(X,Z),
	    parent_of(Z,Y).
	 
	sister_of(X,Y):- 
	    female(X),
	    father_of(F, Y), father_of(F,X).
	 
	sister_of(X,Y):- female(X),
	    mother_of(M, Y), mother_of(M,X).
	 
	aunt_of(X,Y):- female(X),
	    parent_of(Z,Y), sister_of(Z,X).
	 
	brother_of(X,Y):- 
	    male(X),
	    father_of(F, Y), father_of(F,X).
	 
	brother_of(X,Y):- male(X),
	    mother_of(M, Y), mother_of(M,X).
	 
	uncle_of(X,Y):-
	    parent_of(Z,Y), brother_of(Z,X).
	 
	ancestor_of(X,Y):- parent_of(X,Y).
	ancestor_of(X,Y):- parent_of(X,Z),
	    ancestor_of(Z,Y).