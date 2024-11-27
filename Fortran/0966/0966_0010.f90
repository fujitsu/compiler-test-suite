!$omp task default(none)
!$omp task private(ab)
 a=111
!$omp endtask
!$omp endtask
end
