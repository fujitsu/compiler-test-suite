integer,parameter::WP=8
REAL (KIND=WP), DIMENSION(:,:), ALLOCATABLE ::  A, ACOPY,SOLN
ALLOCATE (A(2,2), ACOPY(2,2))
ALLOCATE(SOLN(2, 2))
A=reshape((/(i,i=1,4)/),(/2,2/))
ACOPY=A
SOLN=reshape((/(i,i=1,4)/),(/2,2/))
A(:,:) = MATMUL(ACOPY,  SOLN)
if (any(abs((/A/)-(/ 7,10,15,22 /))>0.0001_WP))print *,'error'
print *,'pass'
end
