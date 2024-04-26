program main
  integer n/0/
  integer y(10)/10*0/
  n = n + ifunc1(y)
  n = n + ifunc2(y)
  n = n + ifunc3(y)
  n = n + ifunc4(y)
  n = n + ifunc5(y)
  n = n + ifunc6(y)
  n = n + ifunc7(y)

  if (n.eq.0) write(6,*) "OK"
end program main

integer function ifunc1(y)
  integer y(10)
  integer x
  ifunc1 = 0
  i=3
  j=3
  k=3
  x = y(1)
  do k=1,x
     do i=1,10
        do j=1,10
           y(k) = i+j
        enddo
     enddo
  enddo
  if (k .ne. 1) then
     print *,"NG1",k,y(1)
     ifunc1 = 1
  endif
end function ifunc1

integer function ifunc2(y)
  integer y(10)
  integer x
  ifunc2 = 0
  i=3
  j=3
  k=3
  x = y(1)
  do k=1,10
     do i=1,x
        do j=1,10
           y(k) = 2
        enddo
     enddo
  enddo
  if (k .ne. 11 ) then
     print *,"NG2",k,y(1)
     ifunc2 = 1
  endif
end function ifunc2

integer function ifunc3(y)
  integer y(10)
  integer x
  ifunc3 = 0
  i=3
  j=3
  k=3
  x = y(1)
  do k=1,10
     do i=1,10
        do j=1,x
           y(k) = 2
        enddo
     enddo
  enddo
  if (k .ne. 11 ) then
     print *,"NG3",k,y(1)
     ifunc3 = 1
  endif
end function ifunc3

integer function ifunc4(y)
  integer y(10)
  integer x
  ifunc4 = 0
  i=3
  j=3
  k=3
  x = y(1)
  do k=1,x
     do i=1,x
        do j=1,10
           y(k) = 2
        enddo
     enddo
  enddo
  if (k .ne. 1 ) then
     print *,"NG4",k,y(1)
     ifunc4 = 1
  endif
end function ifunc4

integer function ifunc5(y)
  integer y(10)
  integer x
  ifunc5 = 0
  i=3
  j=3
  k=3
  x = y(1)
  do k=1,x
     do i=1,10
        do j=1,x
           y(k) = 2
        enddo
     enddo
  enddo
  if (k .ne. 1 ) then
     print *,"NG5",k,y(1)
     ifunc5 = 1
  endif
end function ifunc5

integer function ifunc6(y)
  integer y(10)
  integer x
  ifunc6 = 0
  i=3
  j=3
  k=3
  x = y(1)
  do k=1,10
     do i=1,x
        do j=1,x
           y(k) = 2
        enddo
     enddo
  enddo
  if (k .ne. 11 ) then
     print *,"NG6",k,y(1)
     ifunc6 = 1
  endif
end function ifunc6

integer function ifunc7(y)
  integer y(10)
  integer x
  ifunc7 = 0
  i=3
  j=3
  k=3
  x = y(1)
  do k=1,10
     do i=1,x
        do j=1,x
           y(k) = 2
        enddo
     enddo
  enddo
  if (k .ne. 11 ) then
     print *,"NG7",k,y(1)
     ifunc7 = 1
  endif
end function ifunc7
