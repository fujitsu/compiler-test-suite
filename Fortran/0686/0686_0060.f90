integer :: a(10) /1,2,3,4,5,6,7,8,9,10/
integer :: b(10) /10,9,8,7,6,5,4,3,2,1/

j=10
!$omp parallel workshare
forall ( i = 1: a(j) )
    a(11-i) = b(i)
    b(11-i) = b(i)
end forall
!$omp end parallel workshare

if ( any(a/=(/1,2,3,4,5,6,7,8,9,10/) ) ) print *,"fail"
if ( any(b/=(/1,2,3,4,5,6,7,8,9,10/) ) ) print *,"fail"
print *,'pass'
end
