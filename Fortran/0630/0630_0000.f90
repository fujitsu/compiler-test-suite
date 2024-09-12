program main
  integer a(10)/10*1/
  integer b(10,10)/100*2/
  integer c(10,10)/100*3/
  integer*4 m/0/
  integer res/2/

  do j=1,10
     m=0
     do i=1,10
        if (c(i,j).gt.0) then
           m = m + 1
           a(m) = b(i,j)
        endif
     enddo
  enddo

  do i=1,10
     if (res.ne.a(i)) then
        goto 100;
     endif
  enddo

100 continue
  if (i.eq.11) then
     print*, "OK"
  else
     print*, "NG"
  endif
end program main
