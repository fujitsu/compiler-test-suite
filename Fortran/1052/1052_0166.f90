module taskdepend_mod
  integer, parameter :: ans=6

contains
  subroutine init(x)
    integer :: x
    x = 2
  end subroutine init
  
  subroutine test(x)
    integer :: x
    if(x .ne. ans) then
       print *, "NG"
          end if
    print *, "OK"
  end subroutine test
  
end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: x, pointee_x
  pointer(pointer_x, pointee_x)

  call init(x)
  pointer_x = loc(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(inout: x)
  x = x * 3
  !$omp end task
  !$omp task shared(x) depend(inout: x)
  call test(pointee_x)
  !$omp end task

  !$omp end single
  !$omp end parallel

end program main
