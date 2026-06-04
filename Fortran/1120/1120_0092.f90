call test01()
call test02(ii)
print *,"pass"
end

subroutine test01()
pointer (a,i)
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

subroutine test02(a)
integer :: a,b=1
!$omp task default(firstprivate)
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp task default(private)
!$omp task
if (1.eq.2)print *,a
!$omp endtask
!$omp endtask
!$omp task default(shared)
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp task shared(a)
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp task
!$omp task
 a=111
b=111
!$omp endtask
!$omp endtask

end
