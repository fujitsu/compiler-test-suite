integer :: a(10) /11,12,13,14,15,16,17,18,19,20/
integer :: b(10)    

equivalence ( a(1) , b(1) )

!$omp parallel workshare
forall ( i = 1:9 )
    a(i+1) = a(i) + b(i)
    b(i) = a(i+1)
end forall
!$omp end parallel workshare
if ( any(a/=(/22,24,26,28,30,32,34,36,38,38/)) ) print *,"fail"
if ( any(b/=(/22,24,26,28,30,32,34,36,38,38/)) ) print *,"fail"
print *,'pass'

end
