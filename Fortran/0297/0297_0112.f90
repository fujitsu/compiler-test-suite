subroutine sub1(n,x1,x2,x3,y1,y2,y3,aaa,bbb,ccc,z1)
  real(8),dimension(1:n) :: x1,x2,x3,y1,y2,y3
  integer :: aaa,bbb,ccc,z1

  do i=1,n
     if (aaa == 1) then 
        x1(i) = y1(i) 
     else
        if (z1 == 1) then
           x1(i) = y2(i) 
        else
           x1(i) = y3(i) 
        endif
     endif
     if (bbb == 2) then 
        x2(i) = y2(i) 
     else
        x2(i) = y3(i) 
     endif
     if (ccc == 3) then 
        x3(i) = y3(i) 
     else
        x3(i) = y1(i) 
     endif
  enddo
end subroutine sub1

subroutine sub2(n,x1,x2,x3,y1,y2,y3,aaa,bbb,ccc,z1)
  real(8),dimension(1:n) :: x1,x2,x3,y1,y2,y3
  integer :: aaa,bbb,ccc,z1

  do i=1,n
     if (aaa == 1) then 
        x1(i) = y1(i) 
     else
        x1(i) = y2(i) 
     endif
     if (bbb == 2) then 
        if (z1 == 2) then
           x2(i) = y2(i) 
        else
           x2(i) = y1(i) 
        endif
     else
        x2(i) = y3(i) 
     endif
     if (ccc == 3) then 
        x3(i) = y3(i) 
     else
        x3(i) = y1(i) 
     endif
  enddo
end subroutine sub2

subroutine sub3(n,x1,x2,x3,y1,y2,y3,aaa,bbb,ccc,z1)
  real(8),dimension(1:n) :: x1,x2,x3,y1,y2,y3
  integer :: aaa,bbb,ccc,z1

  do i=1,n
     if (aaa == 1) then 
        x1(i) = y1(i) 
     else
        x1(i) = y2(i) 
     endif
     if (bbb == 2) then 
        x2(i) = y2(i) 
     else
        x2(i) = y3(i) 
     endif
     if (ccc == 3) then 
        x3(i) = y3(i) 
     else
        if (z1 == 10) then
           x3(i) = y1(i) 
        else
           x3(i) = y2(i) 
        endif
     endif
  enddo
end subroutine sub3

program main
  integer,parameter :: n=10
  real(8),parameter :: res_x1=10., res_x2=20., res_x3=30.
  real(8),parameter :: res_0=0.
  real(8),dimension(1:n) :: x1,x2,x3,y1,y2,y3
  
  x1 = 0.
  x2 = 0.
  x3 = 0.
  y1 = 1.
  y2 = 2.
  y3 = 3.

  call sub1(n,x1,x2,x3,y1,y2,y3,1,1,1,1)
  if (sum(x1) /= res_x1) then
     print *, "ng sub1-1 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng sub1-1 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x1) then
     print *, "ng sub1-1 ", "x3 = ", sum(x3)
  endif

  call sub1(n,x1,x2,x3,y1,y2,y3,1,1,1,2)
  if (sum(x1) /= res_x1) then
     print *, "ng sub1-2 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng sub1-2 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x1) then
     print *, "ng sub1-2 ", "x3 = ", sum(x3)
  endif

  x1 = 0.
  x2 = 0.
  x3 = 0.

  call sub2(n,x1,x2,x3,y1,y2,y3,2,2,2,1)
  if (sum(x1) /= res_x2) then
     print *, "ng sub2-1 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x1) then
     print *, "ng sub2-1 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x1) then
     print *, "ng sub2-1 ", "x3 = ", sum(x3)
  endif

  call sub2(n,x1,x2,x3,y1,y2,y3,2,2,2,2)
  if (sum(x1) /= res_x2) then
     print *, "ng sub2-2 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x2) then
     print *, "ng sub2-2 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x1) then
     print *, "ng sub2-2 ", "x3 = ", sum(x3)
  endif

  x1 = 0.
  x2 = 0.
  x3 = 0.

  call sub3(n,x1,x2,x3,y1,y2,y3,1,1,1,10)
  if (sum(x1) /= res_x1) then
     print *, "ng sub3-1 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng sub3-1 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x1) then
     print *, "ng sub3-1 ", "x3 = ", sum(x3)
  endif

  call sub3(n,x1,x2,x3,y1,y2,y3,3,3,3,4)
  if (sum(x1) /= res_x2) then
     print *, "ng sub3-2 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng sub3-2 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x3) then
     print *, "ng sub3-2 ", "x3 = ", sum(x3)
  endif

  print *, "ok"

end program main

