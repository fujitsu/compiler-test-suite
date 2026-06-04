module mod
  real(kind=8),dimension(:,:),allocatable :: a,b
contains
  subroutine foo(n)
    do concurrent(j=1:n)
       do concurrent(i=1:n)
          a(i,j) = a(i,j) + b(i,j)
       enddo
    enddo
  end subroutine foo
end module mod

program main
  use mod
  allocate(a(1000,1000), b(1000,1000))
  a = 1
  b = 2
  call foo(1000)
  if (all(a == 3)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
!
! not diff
