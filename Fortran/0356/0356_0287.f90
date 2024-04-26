program main
  integer y(5,10)/50*0/,z(2)
  integer n/0/
  z(1) = 0
  z(2) = 0
  n = n + ifunc1(y,z)
  n = n + ifunc2(y,z)
  if (n.eq.0) write(6,*) "OK"
end program

integer function ifunc1(y,z)
  integer y(5,10),z(2)
  integer x
  x = z(1)
  m = z(2)
  i=3
  k=3
  do k=1,x
     do i=1,m
        y(k,i) = 1
     enddo
  enddo
  if (i.ne.3 .or. k.ne.1) then
     print *,"NG11",i,k,y(1,1)
     ifunc1 = 1
  else
     ifunc1 = 0
  endif
  i=3
  k=3
  do k=1,x
     do i=1,m
        y(k,i) = 1
     enddo
  enddo
  if (i.ne.3) then
     print *,"NG12",i,y(1,1)
     ifunc1 = 1
  endif
  i=3
  k=3
  do k=1,x
     do i=1,m
        y(k,i) = 1
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG13",k,y(1,1)
     ifunc1 = 1
  endif
end function ifunc1

integer function ifunc2(y,z)
  integer y(5,10),z(2)
  integer x
  ifunc2 = 0
  x = z(1)
  m = z(2)
  i=3
  k=3
  do k=1,x
     do i=1,m
        y(i,k) = 1
     enddo
  enddo
  if (i.ne.3 .or. k.ne.1) then
     print *,"NG21",i,k,y(1,1)
     ifunc2 = 1
  endif
  i=3
  k=3
  do k=1,x
     do i=1,m
        y(i,k) = 1
     enddo
  enddo
  if (i.ne.3) then
     print *,"NG22",i,y(1,1)
     ifunc2 = 1
  endif
  i=3
  k=3
  do k=1,x
     do i=1,m
        y(i,k) = 1
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG23",k,y(1,1)
     ifunc2 = 1
  endif
end function ifunc2
