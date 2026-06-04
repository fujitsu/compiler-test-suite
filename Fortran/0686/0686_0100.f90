integer,parameter :: n = 10
integer*4 :: a(n), b(n), c=0

!$omp parallel workshare
forall ( i=1:n )
  a(i) = mod(100,i)
  b(i) = a(i) + i
  c    = max(b(i),c)
end forall
!$omp end parallel workshare
if (any(a/=(/0,0,1,0,0,4,2,4,1,0/))) print *,"fail"
if (any(b/=(/1,2,4,4,5,10,9,12,10,10/))) print *,"fail"
if (c/=10) print *,"fail"
print *,'pass'
end
