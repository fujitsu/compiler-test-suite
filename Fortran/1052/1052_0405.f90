module taskdepend_mod
  integer, parameter :: ans=32
  integer, parameter :: n=20
contains
  subroutine init(x)
    integer, allocatable :: x(:)
    allocate(x(n))
    x = 2
  end subroutine init
  
  subroutine test(x)
  integer :: i
  integer, allocatable :: x(:)
  do i=1,n
     if(x(i) .ne. ans) then
        print *, "NG"
     end if
  end do
  print *, "OK"
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: i
  integer, allocatable :: x(:)

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(in: x(2))
  do i=1,n
     x(i) = x(i) ** 5
  end do
  !$omp end task
  !$omp task shared(x) depend(inout: x(2))
  call test(x)
  !$omp end task

  !$omp end single
  !$omp end parallel

  deallocate(x)

end program main
