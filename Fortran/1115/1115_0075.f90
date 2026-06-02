module mod
contains
  subroutine foo(a,b,n)
    real(kind=8),dimension(:,:),pointer,contiguous :: a,b
!ocl norecurrence, noalias
    do j=1,n
       do i=1,n
          a(i,j) = a(i,j) + b(i,j)
       enddo
    enddo
  end subroutine foo
end module mod

program main
  use mod
  real(kind=8),dimension(:,:),pointer,contiguous :: a,b
  allocate(a(1000,1000), b(1000,1000))
  a = 1
  b = 2
  call foo(a,b,1000)
  if (all(a == 3)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
