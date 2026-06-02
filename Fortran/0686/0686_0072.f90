k=0
!$omp parallel workshare
forall (i=1:10)
 k = k+1+i
end forall
!$omp end parallel workshare
if ( k /= 11 ) print *,"fail"
print *,'pass'
end
