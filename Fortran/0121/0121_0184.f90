  complex*16 a(16)/16*0/,b(16),c(16)

  do i=1,16
     b(i) = dcmplx(1.797693134862316D+308,2.0)
     c(i) = dcmplx(1.797693134862316D+308,2.0)
  enddo
  do i=1,15
     a(i) = b(i)/c(i)
  enddo
  write(6,*) a(1)
end program
