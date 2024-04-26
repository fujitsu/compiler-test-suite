module mod
  integer,allocatable,dimension(:) :: ii
  integer,allocatable,dimension(:) :: jj
!$omp threadprivate(ii)
  interface
  subroutine dummy(i)
    implicit none
    integer,allocatable,dimension(:) :: i
  end subroutine 
  end interface
end module
program main
  use mod
  implicit none

  allocate(jj(2))
  jj = 20

  call test()

  if ( any(jj .ne. 20) ) call abort()

  deallocate(jj)
  print *, "PASS"
end

subroutine test()
  use mod
!$omp parallel
    allocate(ii(2))
    ii = 10
    call dummy(ii)
    if ( any(ii .ne. 10) ) call abort()
    deallocate(ii)
!$omp end parallel
end

subroutine dummy(i)
  implicit none
  integer,allocatable,dimension(:) :: i
  i=i+0
end subroutine
