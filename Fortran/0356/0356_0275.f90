program main
  integer n/0/
  n = n + ifunc1()
  n = n + ifunc2()
  n = n + ifunc3()
  n = n + ifunc4()
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
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG1",i,j,k,x,y(1,1,1)
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
  x = y(1,1,1)+1
  z = y(1,1,1)
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.3 .or. k.ne.2) then
     print *,"NG2",i,j,k,x,y(1,1,1)
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
  z = y(1,1,1)+1
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG3",i,j,k,x,y(1,1,1)
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
  z = y(1,1,1)+1
  do k=1,x
     do i=1,z
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.2 .or. j.ne.11 .or. k.ne.2) then
     print *,"NG4",i,j,k,x,y(1,1,1)
     ifunc4  = 1
  else
     ifunc4  = 0
  endif
  return
end function ifunc4
