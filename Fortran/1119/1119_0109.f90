call s1
print *,'pass'
contains
subroutine s1
integer,pointer::i(:)
allocate(i(2))
!$omp workshare
!$omp parallel reduction(+:i)
!$omp task
i=i+1
if(i(1)/=1) print *,'err1'
!$omp end task
!$omp taskwait
!$omp endparallel
!$omp endworkshare nowait

allocate(i(2))
!$omp workshare
!$omp parallel reduction(+:i)
!$omp task
i=i+1
if(i(1)/=1) print *,'err2'
!$omp end task
!$omp taskwait
!$omp endparallel
!$omp endworkshare nowait
end subroutine
subroutine s2
integer,pointer::i(:)
allocate(i(2))
!$omp task
!$omp parallel reduction(+:i)
!$omp workshare
i=i+1
!$omp endworkshare
!$omp endparallel
!$omp endtask

!$omp task
!$omp parallel reduction(+:i)
!$omp workshare
i=i+1
!$omp endworkshare
!$omp endparallel
!$omp endtask
end subroutine
end
