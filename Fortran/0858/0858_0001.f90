!$omp task default(none)
!$omp critical
!$omp task
!$omp task
!$omp task
!$omp task
print *,i
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp endcritical
!$omp end task
end
