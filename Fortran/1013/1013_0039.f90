subroutine s1
  character(:),save,allocatable,target :: targ1
  character(:),save,allocatable,target :: targ2
  character(:),save,pointer :: ptr
!$omp threadprivate(ptr)
  allocate(character(10)::targ1)
  allocate(character(10)::targ2)
  targ1='0000000000'
  targ2='1111111111'
!$omp parallel
  ptr=>targ1
!$omp single
  ptr=>targ2
!$omp end single copyprivate(ptr)
  if (ptr/='1111111111') print *,'ng101',ptr
!$omp end parallel
end subroutine s1

call s1
print *,'pass'
end
