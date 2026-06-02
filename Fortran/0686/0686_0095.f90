integer*4 b(10)    /1,2,3,4,5,6,7,8,9,10/

!$omp parallel workshare
forall ( i = 2:9 )
    b(i) =  b(i+1) + b(i) + b(i-1)
end forall
!$omp end parallel workshare

if (any(b/=(/1,6,9,12,15,18,21,24,27,10/))) print *,"fail"
print *,'pass'
end
