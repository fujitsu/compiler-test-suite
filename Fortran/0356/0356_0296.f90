integer function ifunc1()
  integer y(10,10,10)/1000*0/
  integer x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  n = x + 10
  m = x + 10
  ifunc1 = 0
  do j=1,n
     do k=1,m
        do i=1,x
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.11 .or. k.ne.11) then
     print *,"NG1",i,j,k,y(1,1,1)
     ifunc1 = 1
  endif
  return
end function ifunc1

integer function ifunc2()
  integer y(10,10,10)/1000*0/
  integer x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  n = x + 10
  m = x + 10
  ifunc2 = 0
  do j=1,n
     do k=1,x
        do i=1,m
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.11 .or. k.ne.1) then
     print *,"NG2",i,j,k,y(1,1,1)
     ifunc1 = 2
  endif
  return
end function ifunc2

integer function ifunc3()
  integer y(10,10,10)/1000*0/
  integer x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  n = x + 10
  m = x + 10
  ifunc3 = 0
  do j=1,x
     do k=1,n
        do i=1,m
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.1 .or. k.ne.3) then
     print *,"NG3",i,j,k,y(1,1,1)
     ifunc3 = 1
  endif
  return
end function ifunc3

integer function ifunc4()
  integer y(10,10,10)/1000*0/
  integer x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  n = x + 10
  m = x + 10
  ifunc4 = 0
  do j=1,x
     do k=1,x
        do i=1,m
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.1 .or. k.ne.3) then
     print *,"NG4",i,j,k,y(1,1,1)
     ifunc4 = 1
  endif
  return
end function ifunc4

integer function ifunc5()
  integer y(10,10,10)/1000*0/
  integer x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  n = x + 10
  m = x + 10
  ifunc5 = 0
  do j=1,x
     do k=1,n
        do i=1,x
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.1 .or. k.ne.3) then
     print *,"NG5",i,j,k,y(1,1,1)
     ifunc5 = 1
  endif
  return
end function ifunc5

integer function ifunc6()
  integer y(10,10,10)/1000*0/
  integer x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  n = x + 10
  m = x + 10
  ifunc6 = 0
  do j=1,m
     do k=1,x
        do i=1,x
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.11 .or. k.ne.1) then
     print *,"NG6",i,j,k,y(1,1,1)
     ifunc6 = 1
  endif
  return
end function ifunc6

integer function ifunc7()
  integer y(10,10,10)/1000*0/
  integer x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  n = x + 10
  m = x + 10
  ifunc7 = 0
  do j=1,x
     do k=1,x
        do i=1,x
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.1 .or. k.ne.3) then
     print *,"NG7",i,j,k,y(1,1,1)
     ifunc7 = 1
  endif
  return
end function ifunc7

integer function ifunc8()
  integer y(10,10,10)/1000*0/
  integer x
  i=3
  j=3
  k=3
  x = y(1,1,1)
  n = x + 10
  m = x + 10
  ifunc8 = 0
  do j=1,n
     do k=1,m
        do i=1,x+10
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.11 .or. j.ne.11 .or. k.ne.11) then
     print *,"NG8",i,j,k,y(1,1,1)
     ifunc8 = 1
  endif
  return
end function ifunc8

program main
  n = 0
  n = n + ifunc1()
  n = n + ifunc2()
  n = n + ifunc3()
  n = n + ifunc4()
  n = n + ifunc5()
  n = n + ifunc6()
  n = n + ifunc7()
  n = n + ifunc8()

  if (n.eq.0) write(6,*) "OK"

end program main
