!$omp task default(none)
!$omp task private(a)
 a=111
!$omp endtask
!$omp endtask
print *,"pass"
end

subroutine sub01()
!$omp task default(none)
!$omp task private(a,ab)
 a=111
!$omp endtask
!$omp endtask
end

subroutine sub02()
!$omp task default(none)
!$omp task private(a,ab)
!$omp task
 a=111
!$omp endtask
!$omp endtask
!$omp endtask
end

subroutine sub03()
!$omp task default(none)
!$omp task private(ab)
!$omp task private(a)
 a=111
!$omp endtask
!$omp endtask
!$omp endtask
end

subroutine sub04()
!$omp task default(none)
!$omp task 
!$omp task private(a)
 a=111
!$omp endtask
!$omp endtask
!$omp endtask
end
