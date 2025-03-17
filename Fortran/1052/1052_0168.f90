module taskdepend_mod
  integer, parameter :: ans=2
contains
  subroutine init(x)
    integer :: x
    x = 1
  end subroutine init
  
  subroutine test(x)
    integer :: x
    if (x .ne. ans) then
       print *, "NG"
    else 
       print *, "OK"
    end if
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: x

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(in: x)
  x = x + 1
  !$omp end task
  !$omp task shared(x) depend(out: x)
  call test(x)
  !$omp end task
  !$omp end single
  !$omp end parallel

end program main
