program main
  integer y(10,10)/100*0/
  integer n/0/
  n = n + ifunc1(y,0)
  n = n + ifunc2(y,0)
  n = n + ifunc3(y,10)
  n = n + ifunc4(y,10)
  if (n.eq.0) write(6,*) "OK"
end program main

integer function ifunc1(y,z)
  integer y(10,10)
  integer x,z
  i=3
  j=3
  x = z
  do j=1,10
     do i=1,x
        y(j,i) = 1
     enddo
  enddo
  if (i.ne.1) then
     print *,"NG11",i,y(1,1)
     ifunc1 = 1
  else
     ifunc1 = 0
  endif
  i=3
  j=3
  x = z
  do j=1,10
     do i=1,x
        y(j,i) = 1
     enddo
  enddo
  if (j.ne.11) then
     print *,"NG12",j,y(1,1)
     ifunc1 = 1
  endif
end function ifunc1

integer function ifunc2(y,x)
  integer y(10,10)
  integer x
  i=3
  j=3
  do j=1,10
     do i=1,x
        y(j,i) = 1
     enddo
  enddo
  if (i.ne.1 ) then
     print *,"NG21",i,y(1,1)
     ifunc2 = 1
  else
     ifunc2 = 0
  endif
  i=3
  j=3
  do j=1,10
     do i=1,x
        y(j,i) = 1
     enddo
  enddo
  if (j.ne.11 ) then
     print *,"NG22",j,y(1,1)
     ifunc2 = 1
  endif
end function ifunc2

integer function ifunc3(y,z)
  integer y(10,10)
  integer x,z
  i=3
  j=3
  x = z
  do j=1,10
     do i=1,x
        y(j,i) = 1
     enddo
  enddo
  if (i.ne.11 ) then
     print *,"NG31",i,y(1,1)
     ifunc3 = 1
  else
     ifunc3 = 0
  endif
  i=3
  j=3
  x = z
  do j=1,10
     do i=1,x
        y(j,i) = 1
     enddo
  enddo
  if (j.ne.11 ) then
     print *,"NG32",j,y(1,1)
     ifunc3 = 1
  endif
end function ifunc3

integer function ifunc4(y,x)
  integer y(10,10)
  integer x
  i=3
  j=3
  do j=1,10
     do i=1,x
        y(j,i) = 1
     enddo
  enddo
  if (i.ne.11 ) then
     print *,"NG41",i,y(1,1)
     ifunc4 = 1
  else
     ifunc4 = 0
  endif
  i=3
  j=3
  do j=1,10
     do i=1,x
        y(j,i) = 1
     enddo
  enddo
  if ( j.ne.11 ) then
     print *,"NG24",j,y(1,1)
     ifunc4 = 1
  endif
end function ifunc4
