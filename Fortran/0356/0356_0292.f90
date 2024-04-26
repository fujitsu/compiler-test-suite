program main
  integer y(10,10,10)/1000*0/
  integer n/0/
  n = n + ifunc1(y,0)
  n = n + ifunc2(y,0)
  n = n + ifunc3(y,0)
  n = n + ifunc4(y,0)
  n = n + ifunc5(y,0)
  n = n + ifunc6(y,0)
  if (n.eq.0) write(6,*) "OK"
end program main

integer function ifunc1(y,x)
  integer y(10,10,10)
  integer x
  ifunc1 = 0
  i=3
  j=3
  k=3
  do j=1,10
     do k=1,10
        do i=1,x
           y(i,j,k) = 1
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.11 .or. k.ne.11) then
     print *,"NG1",i,j,k,y(1,1,1)
     ifunc1 = 1
  endif
end function ifunc1

integer function ifunc2(y,x)
  integer y(10,10,10)
  integer x
  ifunc2 = 0
  i=3
  j=3
  k=3
  do j=1,10
     do k=1,10
        do i=1,x
           y(i,k,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.11 .or. k.ne.11) then
     print *,"NG1",i,j,k,y(1,1,1)
     ifunc2 = 1
  endif
end function ifunc2

integer function ifunc3(y,x)
  integer y(10,10,10)
  integer x
  ifunc3 = 0
  i=3
  j=3
  k=3
  do j=1,10
     do k=1,10
        do i=1,x
           y(j,i,k) = 1
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.11 .or. k.ne.11) then
     print *,"NG1",i,j,k,y(1,1,1)
     ifunc3 = 1
  endif
end function ifunc3

integer function ifunc4(y,x)
  integer y(10,10,10)
  integer x
  ifunc4 = 0
  i=3
  j=3
  k=3
  do j=1,10
     do k=1,10
        do i=1,x
           y(j,k,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.11 .or. k.ne.11) then
     print *,"NG1",i,j,k,y(1,1,1)
     ifunc4 = 1
  endif
end function ifunc4

integer function ifunc5(y,x)
  integer y(10,10,10)
  integer x
  ifunc5 = 0
  i=3
  j=3
  k=3
  do j=1,10
     do k=1,10
        do i=1,x
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.11 .or. k.ne.11) then
     print *,"NG1",i,j,k,y(1,1,1)
     ifunc5 = 1
  endif
end function ifunc5

integer function ifunc6(y,x)
  integer y(10,10,10)
  integer x
  ifunc6 = 0
  i=3
  j=3
  k=3
  do j=1,10
     do k=1,10
        do i=1,x
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.11 .or. k.ne.11) then
     print *,"NG1",i,j,k,y(1,1,1)
     ifunc6 = 1
  endif
end function ifunc6
