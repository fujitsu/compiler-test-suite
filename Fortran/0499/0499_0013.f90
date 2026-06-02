i=1
i1=1
!$omp task priority(1) final(.false.)
!$omp endtask
!$omp task priority(i1)
!$omp endtask
!$omp task priority(i1+1)
!$omp endtask
print *,'pass'
end
