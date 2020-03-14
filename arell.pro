domains
		name=symbol
predicates
		
		male(name)
		female(name)
		
		parent(name,name)
		mother(name,name)
		father(name,name)
		sister(name,name)
		brother(name,name)
		grandfather(name,name)
		grandmother(name,name)
		uncle(name,name)
		aunt(name,name)
		ancestor(name,name)
		ancestor(name,name)
clauses
		male(bappa).
		male(kappa).
		male(dappa).
		
		female(tuli).
        female(mou).
		female(moly).
		female(liza).
		
		parent(tuli,kappa).
		parent(bappa,kappa).
		parent(bappa,liza).
		parent(kappa,mou).
		parent(kappa,moly).
		parent(moly,dappa).
		
		
		mother(X,Y):- parent(X,Y),female(X).
		father(X,Y):- parent(X,Y),male(X).
		sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X<>Y.
		brother(X,Y):- parent(Z,X),parent(Z,Y),male(X),X<>Y.
		grandfather(X,Y):-
					parent(X,Z),
					parent(Z,Y),
					male(X).
		grandmother(X,Y):-
					parent(X,Z),
					parent(Z,Y),
					female(X).
		uncle(X,Y):-
	               parent(Z,Y), brother(Z,X),male(X).
		
		aunt(X,Y):- 
	                parent(Z,Y), sister(Z,X),female(X).
					
		ancestor(X,Y):- parent(X,Y).
		
	    ancestor(X,Y):- parent(X,Z),ancestor(Z,Y).
	    
		
		
		
		
		