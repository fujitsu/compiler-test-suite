program main
  real(kind=8)::a(1:1024),b
  b = 1.0_8
  call foo(a,b)
  print *, "OK"
end program main

subroutine foo(a,b)
  real(kind=8)::a(1:1024),b
  integer(kind=4)::i
  
  do i=1,1024
     a(i) = 0
  end do
  if(b.eq.1.0_8) then
     a(1) = 1
  end if
end subroutine foo
