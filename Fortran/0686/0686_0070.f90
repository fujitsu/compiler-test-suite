integer,parameter :: n=10
integer a(n), b(n), c(n)

!$omp parallel workshare
forall (i=1:n)
 a(i) = i 
 b(i) = 0 
 c(i) = 0 
end forall
!$omp end parallel workshare

call sub ( a,b,c,n )
if ( any(a/=(/(3,m=1,10)/)) ) print *,"fail"
if ( any(b/=(/(4,m=1,10)/)) ) print *,"fail"
if ( any(c/=(/0,0,6,0,0,0,0,0,0,0/)) ) print *,"fail"
print *,'pass'
end

subroutine sub ( a,b,c,n )
integer a(n), b(n), c(n)

!$omp parallel workshare
forall (i=a(1):a(10))
  a(i) = 3
  b(i) = a(i) + 1
end forall
!$omp end parallel workshare

!$omp parallel workshare
forall (i=a(1):a(10))
  c(i) = a(i) + i
end forall
!$omp end parallel workshare

return
end
