program main
  real(kind=8)::a(1:1024)
  call foo(a)
  print *, "OK"
end program main

subroutine foo(a)
  real(kind=8)::a(1:1024)
  integer(kind=4)::i
  
  do i=1,1024
     a(i) = 0
  end do
  call bar()
end subroutine foo

subroutine bar()
end subroutine bar
