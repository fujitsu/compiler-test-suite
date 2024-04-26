program main
  real b(1024)
  b = 0.
  do i=1,64
     call sub1(b)
  enddo
  print *, "OK"
end program main

subroutine sub1(b)
  real b(1024)
  do j=1,4
      b(j+1) = b(j+1) + b(j)
  enddo
end subroutine sub1

