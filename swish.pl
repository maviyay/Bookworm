% s(CASP) Programming
:- use_module(library(scasp)).
:- style_check(-singleton).

book('The Book Thief', 'by Markus Zusak', 2006, 'historical fiction', 'teen', 'english').
book('City of Bones', 'by Cassandra Clare', 2007, 'fantasy', 'teen','english').
book('Red Rising', 'by Pierce Brown', 2014, 'science fiction', 'teen','english').
book('The Fault in Our Stars', 'by John Green', 2012, 'romance', 'teen','english').
book('Big Little Lies', 'by Liane Moriarty', 2014, 'mystery', 'teen','english').
book('Throne of Glass', 'by Sarah J. Maas', 2012, 'fantasy', 'teen','english').
book('The Giving Tree', 'by Shel Silverstein', 1964, 'fiction', 'child','english').
book('Ramona the Pest', 'by Beverly Clearly', 2000, 'fiction', 'child','english').
book("Harry Potter and the Sorcerer's Stone", 'by JK Rowling', 2003, 'fantasy', _,'english').
book('I am Malala', 'by Malala Yousafzai', 2013, 'nonfiction', _,'english').
book("The Handmaid's Tale", 'by Margaret Atwood', 1998, 'historical fiction', 'adult','english').
book("The Handmaid's Tale", 'by Margaret Atwood', 1998, 'historical fiction', 'teen','english').
book('The Autobiography of Malcolm X', 'by Malcolm X', 1987, 'nonfiction', 'adult','english').
book('Beloved', 'by Toni Morrison', 2004, 'historical fiction', 'adult','english').
book('La reina de Castilla', 'by Laura C. Santiago', 2013, 'historical fiction', 'adult','spanish').
book('Caos', 'by Beatrice Lebrun', 2014, 'fiction', 'adult', 'spanish').
book('Aladdin and the Magic Lamp', 'Kanaga Sajeev', 2019, 'fantasy', 'child', 'hindi').

get_recommendation(A,G,L):- book(T,Au,P,G,A,L), 
    						write('You should read: '), nl,
    						write(T), write(' '), write(Au).
get_recommendation(A,_,L):- book(T, Au,P,G,A,L), 
    						write('Try this read: '), nl,
    						write(T), write(' '), write(Au).

start:-
    write('Welcome, Bookworm!'), nl,
    write('Ready to find a good book? Start by typing in your name!'), nl,
    	read(Name), nl,
    write('Hello, '), write(Name), write('!'), nl,
    write('How old are you?'),nl,
   		read(Ans1),nl,
    	(   Ans1 >= 18 ->  
        		Age = 'adult'
        ;   Ans1 >= 13 ->  
        		Age = 'teen'
        ;   Age = 'child'
        ),
	write('How do you identify yourself?'), nl,
    	write('Select the corresponding number below'), nl,
    	write('1. Male'), nl,
        write('2. Female'), nl,
        write('3. Other/Choose not to disclose'), nl,
    	read(Sex),nl,
    write('What is your favorite genre of books?'), nl,
    	write('1. Fiction'),nl,
    	write('2. Fantasy'), nl,
    	write('3. Historical Fiction'), nl,
    	write('4. Science Fiction'), nl,
    	write('5. Romance'), nl,
    	write('6. Mystery'), nl,
    	write('7. Nonfiction'), nl,
    	read(Ans2), nl,
    	(   Ans2 = 1 ->  
        		Genre = 'fiction'
        ;   Ans2 = 2 ->  
        		Genre = 'fantasy'
        ;   Ans2 = 3 ->  
        		Genre = 'historical fiction'
        ;   Ans2 = 4 ->  
        		Genre = 'science fiction'
        ;   Ans2 = 5 ->  
        		Genre = 'romance'
        ;   Ans2 = 6 ->  
        		Genre = 'mystery'
        ;   Ans2 = 7 ->  
        		Genre = 'nonfiction'
        ),
	%write('Who is your favorite author?'), nl,
	%	read(Author), nl,
    write('What language of books would you prefer?'), nl,
    	read(Language), nl,
    
    get_recommendation(Age, Genre, Language), nl,
	write('Happy reading!').

