integer,parameter::WP=8
REAL (KIND=WP), DIMENSION(:,:), ALLOCATABLE ::  A, ACOPY,SOLN
N=4
ALLOCATE (A(5,4), ACOPY(5,4))
ALLOCATE(SOLN(4, 3))
A=reshape((/(i,i=1,25)/),(/5,4/))
ACOPY=A
SOLN=reshape((/(i,i=1,25)/),(/N,3/))
A(:, 1:3) = MATMUL(ACOPY,SOLN(1:4,:))
if (any(abs((/A/)-(/&
110,120,130,140,150,246,272,298,324,350,382,424,466,508,550,16,17,18,19,20&
/))>0.0001_WP))print *,'error'
write(1,*)int(A)
rewind 1
call chk
print *,'pass'
end
subroutine chk
integer,parameter::WP=8
integer a(20)
read(1,*) a
if (any(((/a/)-(/&
110,120,130,140,150,246,272,298,324,350,382,424,466,508,550,16,17,18,19,20&
/))>0.0001_WP))print *,'error'
end
