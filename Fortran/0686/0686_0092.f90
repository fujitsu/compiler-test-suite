integer*4 a(4)/1,2,3,4/
integer*4 b(4) /1,2,3,4/
!$omp parallel workshare
forall(i=1:3)
    b(i+1) = a(b(i)) + a(b(i+1)) + 1 + b(i)
end forall
!$omp end parallel workshare
if ( any(b/=(/1,5,8,11/)) ) print *,"fail"
print *,'pass'
end
