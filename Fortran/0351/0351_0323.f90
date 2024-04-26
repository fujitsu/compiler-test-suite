program main
  real(kind=8)::a(1:1024)
  integer(kind=4)::j
  j = 1
  call foo(a,j)
  print *, "OK"
end program main

subroutine foo(a,j)
  real(kind=8)::a(1:1024)
  integer(kind=4)::i,j
  
  do i=1,1024
     a(i) = 0
  end do
  if(j.eq.0) then
     a(1) = 1
  end if
end subroutine foo
