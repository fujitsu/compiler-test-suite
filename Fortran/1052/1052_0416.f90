module taskdepend_mod
  integer, parameter :: ans=16
  integer, parameter :: n=100
  integer, parameter :: m=75

contains
  subroutine init(x)
    integer :: x(n)
    x = 4
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
  integer :: x(n)

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(inout: x(:m/2))
  do i=1,n
     x(i) = x(i) + 3 * x(i)
  end do
  !$omp end task
  !$omp task shared(x) depend(inout: x(:m/2))
  call test(x)
  !$omp end task
  !$omp end single
  !$omp end parallel

end program main
