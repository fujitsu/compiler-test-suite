integer:: i=1,iii=1
!$omp parallel default(firstprivate)
!$omp cancel parallel if(i.eq.1)
!$omp flush  (iii)
!$omp end parallel
print *,'pass'
end
