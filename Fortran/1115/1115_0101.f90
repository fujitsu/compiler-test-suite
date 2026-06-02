module mod
  real(kind=8),dimension(1000,1000) :: a
  integer*8 n
  contains
  subroutine foo()
    do concurrent(j=1:n)
       do concurrent(i=1:n)
          a(i,j) = a(i,j) + 3.
       enddo
    enddo
  end subroutine foo
end module mod

program main
  use mod
  a = 0
  n = 1000
  call foo()
  if (all(a == 3)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
