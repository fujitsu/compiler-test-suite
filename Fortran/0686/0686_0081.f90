integer,parameter :: n = 100
integer*4 :: a(n), d=999999

!$omp parallel workshare
forall ( i=1:n )
  a(i) = i          
  d    = min(d,a(i))
end forall
!$omp end parallel workshare
if ( d /= 100 ) print *,"fail"
print *,'pass'
end
