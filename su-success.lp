% INSERT NAMES AND EMAIL ADDRESSES OF YOUR GROUP MEMBERS:
% Tarek Ramadan - tramadan@uni-potsdam.de
%

%subgrid_size(3).

% HINTS:
% - For subgrid_size(s), subgrids can be identified by labels 0..s*s-1
% - A cell (x,y) can be mapped to the subgrid labeled (((x-1)/s)*s + (y-1)/s)

% Your implementation please...

num(1..9).

cell(X,Y) :- num(X), num(Y).

label(X,Y,L) :- cell(X,Y), L=(((X-1)/3)*3 + (Y-1)/3).
sudoku(X,Y,N) :- initial(X,Y,N).
{sudoku(X,Y,N) : num(N)} = 1 :- cell(X,Y).
check_labels(X,Y,X',Y') :- cell(X,Y), cell(X',Y'), label(X,Y,L), label(X',Y',L).

:- sudoku(X,Y,N), sudoku(X',Y,N), X != X'.
:- sudoku(X,Y,N), sudoku(X,Y',N), Y != Y'.
:- sudoku(X,Y,N), sudoku(X',Y',N), check_labels(X,Y,X',Y'), X != X'.
:- sudoku(X,Y,N), sudoku(X',Y',N), check_labels(X,Y,X',Y'), Y != Y'.

#show sudoku/3.

