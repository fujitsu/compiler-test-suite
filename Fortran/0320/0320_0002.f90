program main
  implicit none
  integer,save,allocatable,dimension(:) :: jj

  allocate(jj(2))
  jj = 20

  call test() 

  if ( any(jj .ne. 20) ) call abort()

  deallocate(jj)
  print *, "PASS"
end

subroutine test()
  integer,save,allocatable,dimension(:) :: ii;
!$omp threadprivate(ii)
!$omp parallel
    allocate(ii(2))
    ii = 10
    call dummy(ii)
    if ( any(ii .ne. 10) ) call abort()
    deallocate(ii)
!$omp end parallel
contains 
subroutine dummy(i)
  implicit none
  integer,allocatable,dimension(:) :: i
  i=i+0
end subroutine
end
