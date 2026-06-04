integer :: x = -1
real a(5,4)
j = 100
!$omp parallel workshare
forall (x=1:5,j=1:4)
    a(x,j) = j
endforall
!$omp end parallel workshare

if ( any(a/=reshape((/1,1,1,1,1,2,2,2,2,2,3,3,3,3,3, &
                      4,4,4,4,4,5,5,5,5,5/),(/5,4/))) ) print *,"fail"
if ( j /= 100 ) print *,"fail"
if ( x /= -1  ) print *,"fail"
print *,'pass'
end
