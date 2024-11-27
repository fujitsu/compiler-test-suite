!$omp task default(none) 
!$omp task default(none) 
!$omp task 
 a=111
!$omp endtask
!$omp endtask
!$omp endtask

!$omp task default(none)
!$omp task default(none) private(a)
a=1
!$omp endtask
!$omp task
 a=111
!$omp endtask
!$omp endtask


!$omp task default(none)
!$omp task
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp endtask

!$omp task default(none)
!$omp task
!$omp task
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp endtask
!$omp endtask


!$omp task default(none)
!$omp task
!$omp task
!$omp parallel
 a=111
!$omp end parallel
!$omp endtask
!$omp endtask
!$omp endtask

!$omp task default(none)
!$omp task
!$omp task private(a)
!$omp endtask
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp endtask



end
