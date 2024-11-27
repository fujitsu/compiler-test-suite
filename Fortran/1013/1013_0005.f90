subroutine s1
  character(:),save,allocatable :: targ
!$omp threadprivate(targ)
!$omp parallel
  allocate(character(10)::targ)
!$omp end parallel
  targ='1111111111'
!$omp parallel copyin(targ)
  if (targ/='1111111111') print *,'ng101',targ
!$omp end parallel
end subroutine s1

call s1
print *,'pass'
end
