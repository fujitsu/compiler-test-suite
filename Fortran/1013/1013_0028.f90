subroutine s1
  character(:),save,allocatable :: targ
!$omp threadprivate(targ)
!$omp parallel
  allocate(character(10)::targ)
!$omp end parallel
!$omp parallel
  targ='0000000000'
!$omp single
  targ='1111111111'
!$omp end single copyprivate(targ)
  if (targ/='1111111111') print *,'ng101',targ
!$omp end parallel
end subroutine s1

call s1
print *,'pass'
end
