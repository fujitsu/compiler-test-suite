subroutine s1
  character(:),save,allocatable,target :: targ
  character(:),save,pointer :: ptr
!$omp threadprivate(ptr,targ)

  allocate(character(10)::targ)
  targ='1111111111'
  ptr=>targ

!$omp parallel copyin(ptr)
  if (ptr/='1111111111') print *,'ng101'
!$omp end parallel
end subroutine s1

call s1
print *,'pass'
end
