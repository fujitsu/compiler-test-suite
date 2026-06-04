integer*4 :: a(8) /1,2,3,4,5,6,7,8/
integer*4 :: b(8) /1,2,3,4,5,6,7,8/
integer*4 :: c(8) = 0

!$omp parallel workshare
forall (i = a(1):a(8))
    c(i) = a(i) + i
    a(i) = a(a(i)) + i
    b(b(i)) = b(b(i)) + i
endforall
!$omp end parallel workshare
if ( any(a/=b) ) print *,"fail"
if ( any(a/=c) ) print *,"fail"
print *,'pass'
end
