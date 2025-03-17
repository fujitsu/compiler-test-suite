module taskdepend_mod
  integer, parameter :: ans=2
  integer, parameter :: n=100

contains
  subroutine init(x)
    integer :: x(n)
    x = 1
  end subroutine init
  
  subroutine test(x)
    integer :: i
    integer :: x(n)
    do i=1,n
       if(x(i) .ne. ans) then
          print *, "NG"
       end if
    end do
    print *, "OK"
  end subroutine test
  
end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: x(n), pointee_x(n)

  pointer(pointer_x, pointee_x)

  call init(x)
  pointer_x = loc(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(in: x)
  do i=1,n
     x(i) = x(i) + 1
  end do
  !$omp end task
  !$omp task shared(x) depend(out: x)
  call test(pointee_x)
  !$omp end task

  !$omp end single
  !$omp end parallel

end program main
