program main
  integer n/0/
  n = n + ifunc1()
  n = n + ifunc2()
  n = n + ifunc3()
  n = n + ifunc4()
  n = n + ifunc5()
  n = n + ifunc6()
  n = n + ifunc7()
  n = n + ifunc8()
  n = n + ifunc9()
  n = n + ifunc10()
  n = n + ifunc11()
  n = n + ifunc12()

  if (n.eq.0) write(6,*) "OK"
end program main

integer function ifunc1()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)
  z = y(1,1,1)
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3) then
     print *,"NG1",i,x,y(1,1,1)
     ifunc1  = 1
  else
     ifunc1  = 0
  endif
  return
end function ifunc1

integer function ifunc2()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)
  z = y(1,1,1)
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.3) then
     print *,"NG2",j,x,y(1,1,1)
     ifunc2  = 1
  else
     ifunc2  = 0
  endif
  return
end function ifunc2


integer function ifunc3()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)
  z = y(1,1,1)
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG3",k,x,y(1,1,1)
     ifunc3  = 1
  else
     ifunc3  = 0
  endif
  return
end function ifunc3

integer function ifunc4()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)+1
  z = y(1,1,1)
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.1) then
     print *,"NG4",i,x,y(1,1,1)
     ifunc4  = 1
  else
     ifunc4  = 0
  endif
  return
end function ifunc4

integer function ifunc5()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)+1
  z = y(1,1,1)
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.3) then
     print *,"NG5",j,x,y(1,1,1)
     ifunc5  = 1
  else
     ifunc5  = 0
  endif
  return
end function ifunc5


integer function ifunc6()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)+1
  z = y(1,1,1)
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.2) then
     print *,"NG6",k,x,y(1,1,1)
     ifunc6  = 1
  else
     ifunc6  = 0
  endif
  return
end function ifunc6

integer function ifunc7()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)
  z = y(1,1,1)+1
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3) then
     print *,"NG7",i,x,y(1,1,1)
     ifunc7  = 1
  else
     ifunc7  = 0
  endif
  return
end function ifunc7

integer function ifunc8()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)
  z = y(1,1,1)+1
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.3) then
     print *,"NG8",j,x,y(1,1,1)
     ifunc8  = 1
  else
     ifunc8  = 0
  endif
  return
end function ifunc8


integer function ifunc9()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)
  z = y(1,1,1)+1
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG9",k,x,y(1,1,1)
     ifunc9  = 1
  else
     ifunc9  = 0
  endif
  return
end function ifunc9

integer function ifunc10()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)+1
  z = y(1,1,1)+1
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.2) then
     print *,"NG10",i,x,y(1,1,1)
     ifunc10  = 1
  else
     ifunc10  = 0
  endif
  return
end function ifunc10

integer function ifunc11()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)+1
  z = y(1,1,1)+1
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.11) then
     print *,"NG11",j,x,y(1,1,1)
     ifunc11  = 1
  else
     ifunc11  = 0
  endif
  return
end function ifunc11


integer function ifunc12()
  integer y(10,10,10)/1000*0/
  integer x,z
  i=3
  j=3
  k=3
  x = y(1,1,1)+1
  z = y(1,1,1)+1
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.2) then
     print *,"NG12",k,x,y(1,1,1)
     ifunc12  = 1
  else
     ifunc12  = 0
  endif
  return
end function ifunc12
