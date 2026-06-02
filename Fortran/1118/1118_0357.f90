character(:),allocatable::ch(:)
allocate(character(len("12"))::ch(1))
ch(:)="zz"
!$omp taskwait
deallocate(ch)
allocate(character(len("12"))::ch(1))
!$omp parallel
!$omp task default(firstprivate)
ch(:)="ab"
!$omp taskwait
!$omp endtask
!$omp taskwait
!$omp barrier
!$omp endparallel

!$omp taskwait
deallocate(ch)
allocate(character(len("12"))::ch(1))
!$omp parallel
!$omp task default(firstprivate)
ch(:)="cd"
!$omp taskwait
!$omp endtask
!$omp taskwait
!$omp barrier
!$omp endparallel

!$omp taskwait
print *,'pass'
end
