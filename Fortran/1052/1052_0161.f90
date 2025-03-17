module taskdepend_mod
  integer, parameter :: ans=1
  integer, parameter :: n=100
contains
  subroutine init(x)
    integer, dimension(n) :: x
    x = 1
  end subroutine init
  
  subroutine test(x)
    integer, dimension(n) :: x
    do i=1,n
       if(x(i) .ne. ans) then
          print *, "NG"
       end if
    enddo
    print *, "OK"
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  integer, dimension(n) :: x

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(in: x)
  call test(x)
  !$omp end task
  !$omp task shared(x) depend(inout: x)
  x = 2
  !$omp end task

  !$omp end single
  !$omp end parallel

end program main
