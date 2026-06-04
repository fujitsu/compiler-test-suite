subroutine test(a,b,N)
  integer(kind=8)::N
  real(kind=8), dimension(N) :: a,b
  do i=1,N
     a(i) = b(i)
  enddo
end subroutine test

program main
  print *, "OK"
end program main
