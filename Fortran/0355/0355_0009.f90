program main
  implicit none
  complex*8 a(10),c(10)
  integer*4 i
  data a/10*0.0/
  data c/10*0.0/
  
  do i=1,10
     if (c(i) .ne. (0.0,0.0)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
  call sub
end program main

subroutine sub
  print *, "OK"
end subroutine sub
