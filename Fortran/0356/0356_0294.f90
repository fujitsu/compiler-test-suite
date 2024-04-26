program main
  integer y(10,10)/100*0/
  integer n/0/
  n = n + ifunc1(y,0)
  n = n + ifunc2(y,0)
  n = n + ifunc3(y,10)
  n = n + ifunc4(y,10)
  n = n + ifunc5(y,0)
  n = n + ifunc6(y,0)
  n = n + ifunc7(y,10)
  n = n + ifunc8(y,10)
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
  if (i.ne.1 .or. j.ne.11 ) then
     print *,"NG1",i,j,y(1,1)
     ifunc1 = 1
  else
     ifunc1 = 0
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
  if (i.ne.1 .or. j.ne.11 ) then
     print *,"NG2",i,j,y(1,1)
     ifunc2 = 1
  else
     ifunc2 = 0
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
  if (i.ne.11 .or. j.ne.11 ) then
     print *,"NG3",i,j,y(1,1)
     ifunc3 = 1
  else
     ifunc3 = 0
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
  if (i.ne.11 .or. j.ne.11 ) then
     print *,"NG4",i,j,y(1,1)
     ifunc4 = 1
  else
     ifunc4 = 0
  endif
end function ifunc4

integer function ifunc5(y,z)
  integer y(10,10)
  integer x,z
  i=3
  j=3
  x = z
  do j=1,10
     do i=1,x
        y(i,j) = 1
     enddo
  enddo
  if (i.ne.1 .or. j.ne.11 ) then
     print *,"NG5",i,j,y(1,1)
     ifunc5 = 1
  else
     ifunc5 = 0
  endif
end function ifunc5

integer function ifunc6(y,x)
  integer y(10,10)
  integer x
  i=3
  j=3
  do j=1,10
     do i=1,x
        y(i,j) = 1
     enddo
  enddo
  if (i.ne.1 .or. j.ne.11 ) then
     print *,"NG6",i,j,y(1,1)
     ifunc6 = 1
  else
     ifunc6 = 0
  endif
end function ifunc6

integer function ifunc7(y,z)
  integer y(10,10)
  integer x,z
  i=3
  j=3
  x = z
  do j=1,10
     do i=1,x
        y(i,j) = 1
     enddo
  enddo
  if (i.ne.11 .or. j.ne.11 ) then
     print *,"NG3",i,j,y(1,1)
     ifunc7 = 1
  else
     ifunc7 = 0
  endif
end function ifunc7

integer function ifunc8(y,x)
  integer y(10,10)
  integer x
  i=3
  j=3
  do j=1,10
     do i=1,x
        y(i,j) = 1
     enddo
  enddo
  if (i.ne.11 .or. j.ne.11 ) then
     print *,"NG4",i,j,y(1,1)
     ifunc8 = 1
  else
     ifunc8 = 0
  endif
end function ifunc8
