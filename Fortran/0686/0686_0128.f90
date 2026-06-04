integer,parameter :: n = 3
integer xx(n) /11,22,33/
integer:: a(n,n)=0,b(n,n)=0,x(n,n)=0,y(n,n)=0
logical:: l1=.false.

!$omp parallel

!$omp workshare
forall (i=1:n) 
    b(i,i) = xx(i)
end forall
l1 = any((/b/)/=(/11,0,0,0,22,0,0,0,33/))
!$omp end workshare

if (l1) print *,"fail"

!$omp workshare
forall (i=1:n, j=1:n) 
    x(i,j) = 10 / (i+j-1)
end forall
l1 = any((/x/)/=(/10,5,3,5,3,2,3,2,2/))
!$omp end workshare

if (l1) print *,"fail"

!$omp workshare
x=reshape((/11,0,0,0,22,0,0,0,33/),(/3,3/))
y=reshape((/1,2,3,0,8,7,4,5,6/),(/3,3/))
forall (i=1:n, j=1:n, y(i,j)/=0 .and. i/=j) 
    x(i,j) = 1.0*10.0 / y(i,j)
end forall
l1 = any((/x/)/=(/11,5,3,0,22,1,2,2,33/))
!$omp end workshare

if (l1) print *,"fail"

!$omp workshare
a=reshape((/(m,m=0,8)/),(/3,3/))
forall (i=1:3-1, j=1:3, j>i) a(i,j) = a(j,i)
l1 = any((/a/)/=(/0,1,2,1,4,5,2,5,8/))
!$omp end workshare

if (l1) print *,"fail"

!$omp end parallel

print *,'pass'
end
