module taskdepend_mod
  character(len=10), parameter :: ans="ABCDEfghij"
  
contains
  subroutine init(x)
    character(len=10) :: x
    x = "fghijABCDE"
  end subroutine init
  
  subroutine test(x)
    character(len=10) :: x
    if (x .ne. ans) then
       print *, "NG"
    else
       print *, "OK"
    end if
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  character(len=10) :: x

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(in: x)
  x = "ABCDEfghij"
  !$omp end task
  !$omp task shared(x) depend(out: x)
  call test(x)
  !$omp end task

  !$omp end single
  !$omp end parallel

end program main
