subroutine foo(a,b)
  real(kind=8), dimension(100) :: a,b
  integer(kind=8)::i
  i = 100
  do while (i>0)
     a(i) = b(i)
     i = i-1
  end do
end subroutine foo

program main
  print *, "OK"
end program main
