subroutine foo(a,b,N)
  real*8,dimension(1:N)::a,b
  integer*4::N,i


  do i=1,N
     a(i) = b(i)
  enddo

end subroutine foo

program main
  print *, "OK"
end program main
