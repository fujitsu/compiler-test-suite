module taskdepend_mod
  integer, parameter :: ans=7
  integer, parameter :: n=100

contains
  subroutine init(x)
    integer, pointer :: x(:,:)
    allocate(x(n,n))
    x = 8
  end subroutine init
  
  subroutine test(x)
    integer :: i, j
    integer, pointer :: x(:,:)
    do j=1,n
       do i=1,n
          if(x(i,j) .ne. ans) then
             print *, "NG"
          end if
       end do
    end do
    print *, "OK"
  end subroutine test
  
end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: i, j
  integer, pointer :: x(:,:)
  
  call init(x)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(inout: x(1:23, 56:78))
  do j=1,n
     do i=1,n
        x(i,j) = x(i,j) - 1
     end do
  end do
  !$omp end task
  !$omp task shared(x) depend(out: x(1:23, 56:78))
  call test(x)
  !$omp end task

  !$omp end single
  !$omp end parallel

  deallocate(x)

end program main
