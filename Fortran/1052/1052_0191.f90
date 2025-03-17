module taskdepend_mod
contains
  subroutine test(x)
    integer, allocatable :: x(:)
    if (allocated(x)) then
       print *, "NG"
    endif
  end subroutine test
end module taskdepend_mod

program main
  use taskdepend_mod
  integer, allocatable :: x(:)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(in: x)
  call test(x)
  !$omp end task
  !$omp task shared(x) depend(inout: x)
  call test(x)
  !$omp end task
  !$omp end single
  !$omp end parallel

  print *, "OK"

end program main

