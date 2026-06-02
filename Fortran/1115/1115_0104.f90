module mod
  integer :: n = 1000
  contains
  pure function fun(a) result(r)
  real(kind=8),intent(in):: a
  real(kind=8) r
  r = a + 3
  end function
  subroutine foo(a,n)
    real(kind=8),dimension(n,n) :: a
    do concurrent(j=1:n)
       do concurrent(i=1:n)
          a(i,j) = fun(a(i,j))
       enddo
    enddo
  end subroutine foo
end module mod

program main
  use mod
  real(kind=8),dimension(1000,1000) :: a
  a = 0
  call foo(a,1000)
  do concurrent(j=1:n)
     do concurrent(i=1:n)
        a(i,j) = fun(a(i,j))
     enddo
  enddo
  call foo(a,1000)
  if (all(a == 9)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
