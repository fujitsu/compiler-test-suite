module taskdepend_mod
  complex(kind=4), parameter :: ans=(1.0, 2.0)
  
contains
  subroutine init(x)
    complex(kind=4) :: x
    x = (0.0, 0.0)
  end subroutine init
  
  subroutine test(x)
    complex(kind=4) :: x
    if (x /= ans) then
       print *, "NG"
    else
       print *, "OK"
    end if
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  complex(kind=4) :: x

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(in: x)
  x = (1.0, 2.0)
  !$omp end task
  !$omp task shared(x) depend(out: x)
  call test(x)
  !$omp end task

  !$omp end single
  !$omp end parallel

end program main
