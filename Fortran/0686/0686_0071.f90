integer,parameter :: n=10
integer a(n), b(n), c(n)

!$omp parallel workshare
forall (i=1:n)
 a(i) = i 
 b(i) = i 
 c(i) = 0 
end forall
!$omp end parallel workshare

call sub ( a,b,c,n )

if ( any(a/=(/(1,m=1,10)/)) ) print *,"fail"
if ( any(b/=(/2,20,30,40,50,60,70,80,90,100/)) ) print *,"fail"
if ( any(c/=(/10,0,0,0,0,0,0,0,0,0/)) ) print *,"fail"
print *,'pass'
end
  subroutine sub ( a,b,c,n )
  integer a(n), b(n), c(n)

!$omp parallel workshare
  forall (i=a(1):a(10))
    a(i) = c(i) + 1
    b(i) = b(i) * 10
  end forall
!$omp end parallel workshare
!$omp parallel workshare
  forall (i=a(1):a(10))
    b(i) = c(i) + 2
    c(i) = a(i) * 10
  end forall 
!$omp end parallel workshare

  return
  end
