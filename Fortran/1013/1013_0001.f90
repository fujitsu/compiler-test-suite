subroutine s1
  character(:),save,allocatable :: targ(:)
!$omp threadprivate(targ)
!$omp parallel
  allocate(character(10)::targ(2))
!$omp end parallel
  targ='1111111111'
!$omp parallel copyin(targ)
  if (any(targ/='1111111111')) print *,'ng101'
!$omp end parallel
end subroutine s1

call s1
print *,'pass'
end
