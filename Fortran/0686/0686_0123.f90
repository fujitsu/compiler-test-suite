integer*4 a(8),b(8)

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
!$omp parallel workshare
forall(i=1:6:1)
    a(i+2) = a(i)
    b(i) = b(i+2)
endforall
!$omp end parallel workshare
if ( any(a/=(/1,2,1,2,3,4,5,6/)) ) print *,"fail"
if ( any(b/=(/3,4,5,6,7,8,7,8/)) ) print *,"fail"

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
!$omp parallel workshare
forall(i=6:1:-1)
    a(i+2) = a(i)
    b(i) = b(i+2)
endforall
!$omp end parallel workshare
if ( any(a/=(/1,2,1,2,3,4,5,6/)) ) print *,"fail"
if ( any(b/=(/3,4,5,6,7,8,7,8/)) ) print *,"fail"

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
!$omp parallel workshare
forall(i=3:8:1) 
    a(i-2) = a(i)
    b(i) = b(i-2)
endforall
!$omp end parallel workshare
if ( any(a/=(/3,4,5,6,7,8,7,8/)) ) print *,"fail"
if ( any(b/=(/1,2,1,2,3,4,5,6/)) ) print *,"fail"

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
!$omp parallel workshare
forall(i=8:3:-1)
    a(i-2) = a(i)
    b(i) = b(i-2)
endforall
!$omp end parallel workshare
if ( any(a/=(/3,4,5,6,7,8,7,8/)) ) print *,"fail"
if ( any(b/=(/1,2,1,2,3,4,5,6/)) ) print *,"fail"

print *,'pass'
end
