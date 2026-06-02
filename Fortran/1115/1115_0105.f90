module mod
  type TAG
    integer*8 n
    real(kind=8),dimension(1000,1000) :: a
  end type TAG
  contains
  subroutine foo(st)
    type (TAG) st
    do concurrent(j=1:st%n)
       do concurrent(i=1:st%n)
          st%a(i,j) = st%a(i,j) + 3.
       enddo
    enddo
  end subroutine foo
end module mod

program main
  use mod
  type (TAG) st
  st%n = 1000
  st%a = 0
  call foo(st)
  if (all(st%a == 3)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
