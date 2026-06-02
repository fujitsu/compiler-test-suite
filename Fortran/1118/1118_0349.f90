call s
call s
print *,'pass'
contains
subroutine s
integer,allocatable::i(:)
allocate(i(1))
!$omp task 
!$omp parallel
i=0
!$omp end parallel
!$omp end task
!$omp taskwait 
!$omp task 
i=1
!$omp end task 
!$omp taskwait 
end subroutine
end
