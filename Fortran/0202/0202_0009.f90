!$omp critical (sss) hint(1)
!$omp end critical (sss)
!$omp critical (sss)
!$omp end critical (sss)
!$omp critical (sss), hint(1)
!$omp end critical (sss)
print *,'pass'
end
