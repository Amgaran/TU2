i = 6; %% enter your № of var here
 
A = [0 1; (i/2)^2 0]; 
B = [0; 1]; 
 
Q = [1 0; 0 1/i]; 
R = 1/(i*i); 
N = 0;

X0 = [1; 5+i];
 
[K, P, e] = lqr(A, B, Q, R, N) %% matrix K and P

J_min = X0' * P * X0 %% min of func
