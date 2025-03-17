module taskdepend_mod
  integer, parameter :: ans=100
contains
  subroutine init(x)
    integer, pointer :: x
    allocate(x)
    x = 1
  end subroutine init

  subroutine test(x)
    integer, pointer :: x
    if (.not. associated(x) .or. x .ne. ans) then
       print *, "NG"
    endif
    print *, "OK"
  end subroutine test
end module taskdepend_mod

program main
  use taskdepend_mod
  integer, pointer :: x

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(inout: x)
  x = x * 100
  !$omp end task
  !$omp task shared(x) depend(in: x)
  call test(x)
  !$omp end task
  !$omp end single
  !$omp end parallel

end program main

