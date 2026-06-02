call test01()
print *,"pass"
end

subroutine test01()
common /com/ a
!$omp task default(firstprivate)
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp task default(private)
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp task default(shared)
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp task
!$omp task
 a=111
!$omp endtask
!$omp endtask
end
