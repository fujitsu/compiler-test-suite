!$omp task default(none)
!$omp critical
!$omp critical
!$omp critical
!$omp critical
!$omp critical
!$omp task
print *,i
!$omp end task
!$omp endcritical
!$omp endcritical
!$omp endcritical
!$omp endcritical
!$omp endcritical
!$omp end task
end
