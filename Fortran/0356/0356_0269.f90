program main
  integer y(10,10)/100*1/
  integer x
  x = y(1,1)
  mm = ifunc1(y,x)
  mm = mm + ifunc2(y,x)
  mm = mm + ifunc3(y)
  mm = mm + ifunc4(y)
  mm = mm + ifunc5(y)
  mm = mm + ifunc6(y)
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
  if (i.ne.11 .or. k.ne.2) then
     ifunc1 = 1
     print *,"NG1",i,k,y(1,1)
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
        y(i,k) = 1
     enddo
  enddo
  if (i.ne.11 .or. k.ne.2) then
     ifunc2 = 1
     print *,"NG2",i,k,y(1,1)
  else
     ifunc2 = 0
  endif
end function ifunc2

integer function ifunc3(y)
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
  if (i.ne.11 .or. k.ne.2) then
     ifunc3 = 1
     print *,"NG3",i,k,y(1,1)
  else
     ifunc3 = 0
  endif
end function ifunc3

integer function ifunc4(y)
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
  if (i.ne.11 .or. k.ne.2) then
     ifunc4 = 1
     print *,"NG4",i,k,y(1,1)
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
        y(i,i) = 1
     enddo
  enddo
  if (i.ne.11 .or. k.ne.2) then
     ifunc5 = 1
     print *,"NG5",i,k,y(1,1)
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
        y(k,k) = 1
     enddo
  enddo
  if (i.ne.11 .or. k.ne.2) then
     ifunc6 = 1
     print *,"NG6",i,k,y(1,1)
  else
     ifunc6 = 0
  endif
end function ifunc6
