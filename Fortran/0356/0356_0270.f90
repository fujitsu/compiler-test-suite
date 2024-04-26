program main
  integer y(10,10)/100*1/
  integer x
  x = y(1,1)
  mm = ifunc1(y,x)
  mm = mm + ifunc2(y,x)
  mm = mm + ifunc3(y,x)
  mm = mm + ifunc4(y,x)
  mm = mm + ifunc5(y)
  mm = mm + ifunc6(y)
  mm = mm + ifunc7(y)
  mm = mm + ifunc8(y)
  mm = mm + ifunc9(y)
  mm = mm + ifunc10(y)
  mm = mm + ifunc11(y)
  mm = mm + ifunc12(y)

  if (mm.eq.0) then
     write(6,*) "OK"
  endif
end program main

integer function ifunc1(y,x)
  integer y(10,10)
  integer x
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(k,i) = 1
     enddo
  enddo
  if (i.ne.11) then
     ifunc1 = 1
     print *,"NG1",i,y(1,1)
  else
     ifunc1 = 0
  endif
end function ifunc1

integer function ifunc2(y,x)
  integer y(10,10)
  integer x
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(k,i) = 1
     enddo
  enddo
  if (k.ne.2) then
     ifunc2 = 1
     print *,"NG2",k,y(1,1)
  else
     ifunc2 = 0
  endif
end function ifunc2

integer function ifunc3(y,x)
  integer y(10,10)
  integer x
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(i,k) = 1
     enddo
  enddo
  if (i.ne.11) then
     ifunc3 = 1
     print *,"NG3",i,y(1,1)
  else
     ifunc3 = 0
  endif
end function ifunc3

integer function ifunc4(y,x)
  integer y(10,10)
  integer x
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(i,k) = 1
     enddo
  enddo
  if (k.ne.2) then
     ifunc4 = 1
     print *,"NG4",k,y(1,1)
  else
     ifunc4 = 0
  endif
end function ifunc4

integer function ifunc5(y)
  integer y(10,10)
  integer x
  x = y(1,1)
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(k,i) = 1
     enddo
  enddo
  if (i.ne.11) then
     ifunc5 = 1
     print *,"NG5",i,y(1,1)
  else
     ifunc5 = 0
  endif
end function ifunc5

integer function ifunc6(y)
  integer y(10,10)
  integer x
  x = y(1,1)
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(k,i) = 1
     enddo
  enddo
  if (k.ne.2) then
     ifunc6 = 1
     print *,"NG6",k,y(1,1)
  else
     ifunc6 = 0
  endif
end function ifunc6

integer function ifunc7(y)
  integer y(10,10)
  integer x
  x = y(1,1)
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(i,k) = 1
     enddo
  enddo
  if (i.ne.11) then
     ifunc7 = 1
     print *,"NG7",i,y(1,1)
  else
     ifunc7 = 0
  endif
end function ifunc7

integer function ifunc8(y)
  integer y(10,10)
  integer x
  x = y(1,1)
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(i,k) = 1
     enddo
  enddo
  if (k.ne.2) then
     ifunc8 = 1
     print *,"NG8",k,y(1,1)
  else
     ifunc8 = 0
  endif
end function ifunc8

integer function ifunc9(y)
  integer y(10,10)
  integer x
  x = y(1,1)
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(i,i) = 1
     enddo
  enddo
  if (i.ne.11 ) then
     ifunc9 = 1
     print *,"NG9",i,y(1,1)
  else
     ifunc9 = 0
  endif
end function ifunc9

integer function ifunc10(y)
  integer y(10,10)
  integer x
  x = y(1,1)
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(i,i) = 1
     enddo
  enddo
  if (k.ne.2) then
     ifunc10 = 1
     print *,"NG10",k,y(1,1)
  else
     ifunc10 = 0
  endif
end function ifunc10

integer function ifunc11(y)
  integer y(10,10)
  integer x
  x = y(1,1)
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(k,k) = 1
     enddo
  enddo
  if (i.ne.11) then
     ifunc11 = 1
     print *,"NG11",i,y(1,1)
  else
     ifunc11 = 0
  endif
end function ifunc11

integer function ifunc12(y)
  integer y(10,10)
  integer x
  x = y(1,1)
  i=3
  k=3
  do k=1,x
     do i=1,10
        y(k,k) = 1
     enddo
  enddo
  if (k.ne.2) then
     ifunc12 = 1
     print *,"NG12",k,y(1,1)
  else
     ifunc12 = 0
  endif
end function ifunc12
