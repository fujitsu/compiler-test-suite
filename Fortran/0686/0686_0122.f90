integer*4 a(8),b(8)

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
!$omp parallel workshare
forall(i=1:7:1)
    a(i+1) = a(i)
    b(i) = b(i+1)
endforall
!$omp end parallel workshare
if ( any(a/=(/1,1,2,3,4,5,6,7/)) ) print *,"fail"
if ( any(b/=(/2,3,4,5,6,7,8,8/)) ) print *,"fail"

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
!$omp parallel workshare
forall(i=7:1:-1)
    a(i+1) = a(i)
    b(i) = b(i+1)
endforall
!$omp end parallel workshare
if ( any(a/=(/1,1,2,3,4,5,6,7/)) ) print *,"fail"
if ( any(b/=(/2,3,4,5,6,7,8,8/)) ) print *,"fail"

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
!$omp parallel workshare
forall(i=2:8:1) 
    a(i-1) = a(i)
    b(i) = b(i-1)
endforall
!$omp end parallel workshare
if ( any(a/=(/2,3,4,5,6,7,8,8/)) ) print *,"fail"
if ( any(b/=(/1,1,2,3,4,5,6,7/)) ) print *,"fail"

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
!$omp parallel workshare
forall(i=8:2:-1)
    a(i-1) = a(i)
    b(i) = b(i-1)
endforall
!$omp end parallel workshare
if ( any(a/=(/2,3,4,5,6,7,8,8/)) ) print *,"fail"
if ( any(b/=(/1,1,2,3,4,5,6,7/)) ) print *,"fail"

print *,'pass'
end
