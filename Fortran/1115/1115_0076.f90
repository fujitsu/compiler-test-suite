module mod
  real(kind=8),dimension(:),pointer,contiguous :: a
  contains
  subroutine foo(n)
!ocl norecurrence, noalias
    do i=1,n
       a(i) = a(i) + 3.
    enddo
  end subroutine foo
end module mod

program main
  use mod
  allocate(a(1000))
  a = 0
  call foo(1000)
  if (all(a == 3)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
!
! not diff
