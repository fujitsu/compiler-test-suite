subroutine test(a,b,N)
  integer(kind=8)::N
  real(kind=8), dimension(N,N) :: a,b
  do i=1,5
     do j=1,N
        a(i,j) = b(i,j)
     enddo
  enddo
end subroutine test

program main
  print *, "OK"
end program main
