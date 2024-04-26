integer,parameter::s=2
double precision :: A(s,s), B(s,s)
double precision :: X(s), Y(s), Z(s)
           A = reshape((/1,2,3,4/), (/s,s/))
           B = reshape((/6,7,8,9/), (/s,s/))
           X = (/ 1.1d0, 2.2d0 /)
           Y = (/ -7d0, 12d0 /)
Z = MATMUL(A, X) - MATMUL(B, Y)
if (any(abs(Z-(/-46.3,-48.0/))>0.001_8))print *,'error'
print *,'pass'
end
