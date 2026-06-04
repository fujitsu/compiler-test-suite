program main
  integer x(0:9)/5,6,7,8,9,10,11,12,13,14/
  integer y(0:9)/10*0/,z(0:9)/10*0/
  do i=0,6
     y(i) = x(i+3)
     x(i+2) = 100
!     x(i) = 30
     z(i) = x(i+2)
  enddo

  write(6,*) x(1)
  write(6,*) y(1)
  write(6,*) z
end program main
