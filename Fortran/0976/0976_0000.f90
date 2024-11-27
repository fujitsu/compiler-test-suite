logical,allocatable::arr(:,:)
allocate(arr(2,3))
arr = .false.
call omp_set_dynamic (.false.)
call omp_set_num_threads (16)

!$omp parallel reduction(.and.: arr)
call wsub(arr)
!$omp end parallel
!$omp parallel reduction(.or.: arr)
call wsub(arr)
!$omp end parallel
!$omp parallel reduction(.eqv.: arr)
call wsub(arr)
!$omp end parallel
!$omp parallel reduction(.neqv.: arr)
call wsub(arr)
!$omp end parallel

print *,'pass'
contains
subroutine wsub(arr)
logical, intent(out) :: arr(:,:)
arr=.true.
end subroutine
end
