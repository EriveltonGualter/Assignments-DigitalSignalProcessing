A = [-4 0 ; 10 0 ];
B = [ 4 ; 0 ];
C = [ 0 1 ];
D = [ 0 ];
polos = [ -40+40j -40-40j ];
H = place( A', C', polos )'
