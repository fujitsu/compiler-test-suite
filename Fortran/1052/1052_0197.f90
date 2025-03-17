module taskdepend_mod
contains
  subroutine init(x)
    integer :: x
    x = 1
  end subroutine init
  
  subroutine test(x)
    integer :: x
    if ((x .ne. 3) .and. (x .ne. 4)) then
       print *, "NG"
    end if
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: x

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(out: x)
  x = 2
  !$omp end task
  !$omp task shared(x) depend(in: x)
  call test(x+1)
  !$omp end task
  !$omp task shared(x) depend(in: x)
  call test(x+2)
  !$omp end task
  !$omp end single
  !$omp end parallel
  print *, "OK"
end program main
