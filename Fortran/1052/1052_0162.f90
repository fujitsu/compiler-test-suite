module taskdepend_mod
  integer, parameter :: ans=100
contains
  subroutine init(x)
    integer, allocatable :: x
    allocate(x)
    x = 10
  end subroutine init
  
  subroutine test(x)
  integer, allocatable :: x
  if(x .ne. ans) then
     print *, "NG"
  end if
  print *, "OK"
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  integer, allocatable :: x

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(out: x)
  x = x * 10
  !$omp end task
  !$omp task shared(x) depend(inout: x)
  call test(x)
  !$omp end task

  !$omp end single
  !$omp end parallel

  deallocate(x)

end program main
