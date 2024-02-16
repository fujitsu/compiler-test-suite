  complex*8 a(16)/16*0/,b(16),c(16)
  do i=1,16
     b(i) = cmplx(3.40282347E+38,2.0)
     c(i) = cmplx(3.40282347E+38,2.0)
  enddo
  do i=1,15
     a(i) = b(i)/c(i)
  enddo
  write(6,*) a(1)
end program
