module mod
  contains
  subroutine foo(a,n)
    real(kind=8),dimension(:),allocatable :: a
    do i=1,n
       a(i) = a(i) + 3.
    enddo
  end subroutine foo
end module mod

program main
  use mod
  real(kind=8),dimension(:),allocatable :: a
  allocate(a(1000))
  a = 0
  call foo(a,1000)
  if (all(a == 3)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
!
! no diff
