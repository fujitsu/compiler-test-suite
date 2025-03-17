integer,parameter::WP=8
REAL (KIND=WP), DIMENSION(:,:), ALLOCATABLE ::  A, ACOPY,SOLN
M=5
N=4
ALLOCATE (A(M,N), ACOPY(M,N))
ALLOCATE(SOLN(N, 3))
A=reshape((/(i,i=1,N*M)/),(/M,N/))
ACOPY=A
SOLN=reshape((/(i,i=1,N*3)/),(/N,3/))
A(:, 1:3) = MATMUL(ACOPY,  TRANSPOSE(TRANSPOSE(SOLN(1:N, :))))
if (any(abs((/A/)-(/&
110,120,130,140,150,246,272,298,324,350,382,424,466,508,550,16,17,18,19,20&
/))>0.0001_WP))print *,'error'
print *,'pass'
end
