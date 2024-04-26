program main
  complex*8 b(1,2)/2*0/
  complex*8 c(1,2)/2*1/
  integer*4 list(2)/1,2/
  integer*8 i,j

  do j=1,1
     do i=1,2,list(1)
        b(j,list(i)) = c(j,list(i)) + 1
     enddo
  enddo
  if (b(1,1) .ne. cmplx(2.0, 0.0)) then
     write(6,*) "ng"
     print *,b(1,1)
  else
     write(6,*) "ok"
  endif

end program main
