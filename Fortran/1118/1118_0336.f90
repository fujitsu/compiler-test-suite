call o1
call o2
call o3
call o4
print *,'pass'
contains
subroutine o1
!$omp taskwait
!$omp parallel
!$omp task
!$omp endtask
!$omp taskwait
!$omp task untied
!$omp taskwait
!$omp endtask
!$omp end parallel
!$omp parallel
!$omp taskwait
!$omp endparallel
end subroutine
subroutine o2
!$omp parallel
!$omp do
do i=0,10
!$omp task
!$omp end task
!$omp taskwait
end do
!$omp end parallel
end subroutine
subroutine o3
!$omp parallel
!$omp single
!$omp task
!$omp endtask
!$omp taskwait
!$omp endsingle
!$omp end parallel
end subroutine
subroutine o4
!$omp parallel
 !$omp sections
  !$omp task
  !$omp end task
 !$omp taskwait
!$omp endsections
!$omp end parallel
end subroutine
end
