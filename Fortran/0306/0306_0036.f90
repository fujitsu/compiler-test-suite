subroutine sub(a,N)
  real(kind=4),dimension(1024)::a
  integer::N

  do i=1,1024
     a(i) = a(i) + 1
     do j=1,1024

     end do
  enddo
end subroutine sub

program main
  print *, "OK"
end program main
