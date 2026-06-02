subroutine test(a,b,c,N)
  integer(kind=8)::N
  real(kind=8), dimension(N) :: a,b,c
  do i=1,N
     a(i) = b(i)
  enddo
end subroutine test

program main
  print *, "OK"
end program main
