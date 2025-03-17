module taskdepend_mod
  integer, parameter :: ans_1=1
  integer, parameter :: ans_2=2
contains
  subroutine init(x)
    integer :: x
    x = 1
  end subroutine init
  
  subroutine test1(x)
    integer :: x
    if (x .ne. ans_1) then
       print *, "NG"
    end if
  end subroutine test1

  subroutine test2(x)
    integer :: x
    if (x .ne. ans_2) then
       print *, "NG"
    end if
  end subroutine test2

end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: x

  call init(x)

  !$omp parallel private(x)
  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(in: x)
  x = 1
  !$omp end task
  !$omp task shared(x) depend(inout: x)
  call test1(x)
  x = 2
  call test2(x)
  !$omp end task
  !$omp end single
  !$omp end parallel
  !$omp end parallel

  print *, "OK"

end program main
