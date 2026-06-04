program mvct5233
  real*4 a(5)/1,2,3,4,5/
  do i=1,2
     a(1) = a(1) + i + 1
  enddo
  write(6,*) a(1)
end program mvct5233
