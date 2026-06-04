integer*4 :: a(8) /1,2,3,4,5,6,7,8/
integer*4 :: b(8) /1,2,3,4,5,6,7,8/

!$omp parallel workshare
forall (i=a(1):a(8))
    a(a(i)) = a(a(i)) + i    
    b(b(i)) = b(b(i)) + b(i)
end forall
!$omp end parallel workshare
if ( any(a/=(/2,4,6,8,10,12,14,16/)) ) print *,"fail"
print *,'pass1'

!$omp parallel workshare
forall (i=1:8,a(i)<=2)
    a(a(i)) = a(a(i)) * (-1)
end forall
!$omp end parallel workshare
if ( any(a/=(/2,-4,6,8,10,12,14,16/)) ) print *,"fail"
print *,'pass2'

!$omp parallel workshare
forall (i=1:8,b(i)<=8)
    a(b(i)) = a(b(i)) * 10  
end forall
!$omp end parallel workshare
print *,'pass3'
if ( any(a/=(/2,-40,6,80,10,120,14,160/)) ) print *,"fail"
if ( any(b/=(/2,4,6,8,10,12,14,16/)) ) print *,"fail"

print *,'pass'
end
