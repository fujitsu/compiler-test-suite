module taskdepend_mod
  integer, parameter :: ans=5
contains
  subroutine init(x)
    integer :: x
    x = 100
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
  use omp_lib
  use taskdepend_mod
  integer :: x

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) final(x .ne. 0) 
  !$omp task shared(x) depend(out: x)
  if (.not. omp_in_final()) then
     print *, "NG"
  endif
  x = x / 20
  !$omp end task

  !$omp task shared(x) depend(inout: x)
  if (.not. omp_in_final()) then
     print *, "NG"
  endif
  call test(x)
  !$omp end task
  !$omp end task
  !$omp end single
  !$omp end parallel

end program main
