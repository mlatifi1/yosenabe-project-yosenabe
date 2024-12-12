%% Your code here

% Step 1: Create targets that contains numbers and areas. 
{target(X1,Y1,X2,Y2,A,N): number(X1,Y1,N), area(X2,Y2,A)} :- X1 = X2.
{target(X1,Y1,X2,Y2, A,N): number(X1,Y1,N), area(X2,Y2,A)} :- Y1 = Y2.

% constraints to remove all the duplicates
:-#sum{1,X1,Y1:target(X1,Y1,_,_,_,_)} != N, N = #sum{1,X2,Y2:number(X2,Y2,_)}.

% constraints to remove all theoverlapping
:-#sum{1,X1,Y1,X2,Y2:target(X1,Y1,X2,Y2,_,_)} != N, N = #sum{1,X3,Y3:number(X3,Y3,_)}.

% create the targets 4/6
target(X1,Y1,X2,Y2) :- target(X1,Y1,X2,Y2,A,N).

% print all the targets of 4
#show target/4.