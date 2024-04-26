program main
  implicit none
  complex*8 a(10),c(10)
  integer*4 i
  data a/10*0.0/
  data c/10*0.0/
  
  call sub1(a,c)
  call sub2(a,c)
  
  do i=1,10
     if (c(i) .ne. 0.0) then
        write(6,*) c(i)
     endif
  enddo
  print *, "OK"
end program main

subroutine sub1(a,c)
  complex*8 a(10),c(10)
  integer*4 i
  loop1:do j=1,10
     loop2:do i=1,10
        c(i)=sqrt(a(i))+c(i)
        if (i==7) exit
     enddo loop2
  enddo loop1
end subroutine sub1

subroutine sub2(a,c)
  complex*8 a(10),c(10)
  integer*4 i
  loop1:do j=1,10
     loop2:do i=1,10
        c(i)=sqrt(a(i))+c(i)
        if (i==7) exit loop1
     enddo loop2
  enddo loop1
end subroutine sub2

