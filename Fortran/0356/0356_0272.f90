program main
  integer y(10,10,10)
  y(1,1,1) =0
  mm = ifunc1(y)
  mm = mm + ifunc2(y)
  mm = mm + ifunc3(y)
  mm = mm + ifunc4(y)
  mm = mm + ifunc5(y)
  mm = mm + ifunc6(y)
  mm = mm + ifunc7(y)
  mm = mm + ifunc8(y)
  mm = mm + ifunc9(y)
  if (mm.eq.0) then
     write(6,*) "OK"
  endif
end program main

integer function ifunc1(y)
  integer y(10,10,10),x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(j,i,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG1",i,j,k,x,y(1,1,1)
     ifunc1=1
  else
     ifunc1=0
  endif
end function ifunc1

integer function ifunc2(y)
  integer y(10,10,10),x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(j,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG2",i,j,k,x,y(1,1,1)
     ifunc2=1
  else
     ifunc2=0
  endif
end function ifunc2

integer function ifunc3(y)
  integer y(10,10,10),x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(j,i,k) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG3",i,j,k,x,y(1,1,1)
     ifunc3=1
  else
     ifunc3=0
  endif
end function ifunc3

integer function ifunc4(y)
  integer y(10,10,10),x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(j,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG4",i,j,k,x,y(1,1,1)
     ifunc4=1
  else
     ifunc4=0
  endif
end function ifunc4

integer function ifunc5(y)
  integer y(10,10,10),x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(j,j,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG5",i,j,k,x,y(1,1,1)
     ifunc5=1
  else
     ifunc5=0
  endif
end function ifunc5

integer function ifunc6(y)
  integer y(10,10,10),x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(j,j,k) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG6",i,j,k,x,y(1,1,1)
     ifunc6=1
  else
     ifunc6=0
  endif
end function ifunc6

integer function ifunc7(y)
  integer y(10,10,10),x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(j,k,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG7",i,j,k,x,y(1,1,1)
     ifunc7=1
  else
     ifunc7=0
  endif
end function ifunc7

integer function ifunc8(y)
  integer y(10,10,10),x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(j,k,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG8",i,j,k,x,y(1,1,1)
     ifunc8=1
  else
     ifunc8=0
  endif
end function ifunc8

integer function ifunc9(y)
  integer y(10,10,10),x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(j,k,k) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG9",i,j,k,x,y(1,1,1)
     ifunc9=1
  else
     ifunc9=0
  endif
end function ifunc9
