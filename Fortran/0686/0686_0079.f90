integer,parameter :: n = 10
integer*4 :: a(n)=0, b(n)=0, c=0, d=999999

!$omp parallel workshare
forall ( i=1:n , i <=  8 )
  a(i) = mod(i,3)
  b(i) = a(i) + 1
  c    = max(c,b(i))
  d    = min(d,b(i))
end forall
!$omp end parallel workshare
if ( any(a/=(/1,2,0,1,2,0,1,2,0,0/) ) ) print *,"fail"
if ( any(b/=(/2,3,1,2,3,1,2,3,0,0/) ) ) print *,"fail"
if ( c/=3 ) print *,"fail"
if ( d/=3 ) print *,"fail"
print *,'pass'
end
