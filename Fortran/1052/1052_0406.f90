module taskdepend_mod
  integer, parameter :: n=40
contains
  subroutine init(x)
    integer, allocatable :: x(:)
    allocate(x(n))
    do i=1,n
       x(i) = i
    end do
  end subroutine init
  
  subroutine test(x)
  integer :: i
  integer, allocatable :: x(:)
  do i=1,n
     if(x(i) .ne. i * i) then
        print *, "NG"
     end if
  end do
  print *, "OK"
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: i
  integer, allocatable :: x(:)

  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(out: x(34:))
  do i=1,n
     x(i) = x(i) * x(i)
  end do
  !$omp end task
  !$omp task shared(x) depend(in: x(34:))
  call test(x)
  !$omp end task

  !$omp end single
  !$omp end parallel

  deallocate(x)

end program main
