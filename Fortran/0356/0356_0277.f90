program main
  integer n/0/
  n = n + ifunc1()
  n = n + ifunc2()
  n = n + ifunc3()
  n = n + ifunc4()
  n = n + ifunc5()
  n = n + ifunc6()
  if (n.eq.0) write(6,*) "OK"
end program main

integer function ifunc1()
  integer y(10,10,10)/1000*0/
  integer n1,n2,n3
  i=3
  j=3
  k=3
  n1 = y(1,1,1)
  n2 = y(1,1,2)
  n3 = y(1,1,3)
  do k=1,n1
     do i=1,n2
        do j=1,n3
           y(i,j,k) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG1",i,j,k,n1,n2,n3,y(1,1,1)
     ifunc1 = 1
  else
     ifunc1 = 0
  endif
end function ifunc1

integer function ifunc2()
  integer y(10,10,10)/1000*0/
  integer n1,n2,n3
  i=3
  j=3
  k=3
  n1 = y(1,1,1)
  n2 = y(1,1,2)
  n3 = y(1,1,3)
  do k=1,n1
     do i=1,n2
        do j=1,n3
           y(i,k,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG2",i,j,k,n1,n2,n3,y(1,1,1)
     ifunc2 = 1
  else
     ifunc2 = 0
  endif
end function ifunc2

integer function ifunc3()
  integer y(10,10,10)/1000*0/
  integer n1,n2,n3
  i=3
  j=3
  k=3
  n1 = y(1,1,1)
  n2 = y(1,1,2)
  n3 = y(1,1,3)
  do k=1,n1
     do i=1,n2
        do j=1,n3
           y(j,i,k) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG3",i,j,k,n1,n2,n3,y(1,1,1)
     ifunc3 = 1
  else
     ifunc3 = 0
  endif
end function ifunc3

integer function ifunc4()
  integer y(10,10,10)/1000*0/
  integer n1,n2,n3
  i=3
  j=3
  k=3
  n1 = y(1,1,1)
  n2 = y(1,1,2)
  n3 = y(1,1,3)
  do k=1,n1
     do i=1,n2
        do j=1,n3
           y(j,k,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG4",i,j,k,n1,n2,n3,y(1,1,1)
     ifunc4 = 1
  else
     ifunc4 = 0
  endif
end function ifunc4

integer function ifunc5()
  integer y(10,10,10)/1000*0/
  integer n1,n2,n3
  i=3
  j=3
  k=3
  n1 = y(1,1,1)
  n2 = y(1,1,2)
  n3 = y(1,1,3)
  do k=1,n1
     do i=1,n2
        do j=1,n3
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG5",i,j,k,n1,n2,n3,y(1,1,1)
     ifunc5 = 1
  else
     ifunc5 = 0
  endif
end function ifunc5

integer function ifunc6()
  integer y(10,10,10)/1000*0/
  integer n1,n2,n3
  i=3
  j=3
  k=3
  n1 = y(1,1,1)
  n2 = y(1,1,2)
  n3 = y(1,1,3)
  do k=1,n1
     do i=1,n2
        do j=1,n3
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG6",i,j,k,n1,n2,n3,y(1,1,1)
     ifunc6 = 1
  else
     ifunc6 = 0
  endif
end function ifunc6
