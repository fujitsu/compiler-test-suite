module taskdepend_mod
  integer, parameter :: ans_x=1
  integer, parameter :: ans_y=2
contains
  subroutine init(x, y)
    integer :: x, y
    x = 1
    y = 2
  end subroutine init
  
  subroutine test(x, y)
    integer :: x, y
    if ((x .ne. ans_x) .or. (y .ne. ans_y)) then
       print *, "NG"
    else 
       print *, "OK"
    end if
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: x, y

  call init(x, y)

  !$omp parallel
  !$omp single
  !$omp task shared(x,y) depend(out: x) depend(out: y)
  call test(x, y)
  !$omp end task
  !$omp task shared(x,y) depend(in: x) depend(out: y)
  x = x + 1
  y = y + 2
  !$omp end task

  !$omp end single
  !$omp end parallel

end program main
