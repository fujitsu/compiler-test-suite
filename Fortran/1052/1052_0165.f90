module taskdepend_mod
  integer, parameter :: ans=9
  integer, parameter :: n=100

contains
  subroutine init(x)
    integer, pointer :: x(:)
    allocate(x(n))
    x = 3
  end subroutine init
  
  subroutine test(x)
    integer :: i
    integer, pointer :: x(:)
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
  integer :: i
  integer, pointer :: x(:)
  
  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(out: x)
  do i=1,n
     x(i) = x(i) * x(i)
  end do
  !$omp end task
  !$omp task shared(x) depend(inout: x)
  call test(x)
  !$omp end task

  !$omp end single
  !$omp end parallel

  deallocate(x)

end program main
