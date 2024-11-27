integer i
!$omp task default(none)
!$omp task private(j)
j=1
!$omp end task
!$omp end task
end
