subroutine sub1(b)
  real b(1024)
  do j=1,1024
     b(j)=j
  enddo
end subroutine sub1

program main
  real b(1024)
  call sub1(b)
  print *, "OK"
end program main

