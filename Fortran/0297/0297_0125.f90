subroutine sub1(n,x1,x2,x3,y1,y2,y3,aaa,bbb,ccc)
  real(8),dimension(1:n,1:n) :: x1,x2,x3,y1,y2,y3
  integer :: aaa,bbb,ccc

  do j=1,n
  do i=1,n
     if (aaa == 1) then 
        x1(i,j) = y1(i,j) 
     else
        x1(i,j) = y2(i,j) 
     endif
     if (bbb == 2) then 
        x2(i,j) = y2(i,j) 
     else
        x2(i,j) = y3(i,j) 
     endif
     if (ccc == 3) then 
        x3(i,j) = y3(i,j) 
     else
        x3(i,j) = y1(i,j) 
     endif
  enddo
  enddo
end subroutine sub1

subroutine sub2(n,x1,x2,x3,y1,y2,y3,aaa,bbb,ccc)
  real(8),dimension(1:n,1:n) :: x1,x2,x3,y1,y2,y3
  integer :: aaa,bbb,ccc

  do j=1,n
  do i=1,n
     if (aaa == 1) then 
        x1(i,j) = y1(i,j) 
     else
        x1(i,j) = y2(i,j) 
     endif
     if (bbb == 2) then 
        x2(i,j) = y2(i,j) 
     else
        x2(i,j) = y3(i,j) 
     endif
     if (ccc == 3) then 
        x3(i,j) = y3(i,j) 
     else
        x3(i,j) = y1(i,j) 
     endif
  enddo
  enddo
end subroutine sub2

subroutine sub3(n,x1,x2,x3,y1,y2,y3,aaa,bbb,ccc)
  real(8),dimension(1:n,1:n) :: x1,x2,x3,y1,y2,y3
  integer :: aaa,bbb,ccc

  do j=1,n
  do i=1,n
     if (aaa == 1) then 
        x1(i,j) = y1(i,j) 
     else
        x1(i,j) = y2(i,j) 
     endif
     if (bbb == 2) then 
        x2(i,j) = y2(i,j) 
     else
        x2(i,j) = y3(i,j) 
     endif
     if (ccc == 3) then 
        x3(i,j) = y3(i,j) 
     else
        x3(i,j) = y1(i,j) 
     endif
  enddo
  enddo
end subroutine sub3

program main
  integer,parameter :: n=5
  real(8),parameter :: res_x1=25., res_x2=50., res_x3=75.
  real(8),parameter :: res_0=0.
  real(8),dimension(1:n,1:n) :: x1,x2,x3,y1,y2,y3
  
  x1 = 0.
  x2 = 0.
  x3 = 0.
  y1 = 1.
  y2 = 2.
  y3 = 3.

  call sub1(n,x1,x2,x3,y1,y2,y3,1,1,1)
  if (sum(x1) /= res_x1) then
     print *, "ng sub1-1 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng sub1-1 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x1) then
     print *, "ng sub1-1 ", "x3 = ", sum(x3)
  endif

  call sub1(n,x1,x2,x3,y1,y2,y3,2,2,2)
  if (sum(x1) /= res_x2) then
     print *, "ng sub1-2 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x2) then
     print *, "ng sub1-2 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x1) then
     print *, "ng sub1-2 ", "x3 = ", sum(x3)
  endif

  x1 = 0.
  x2 = 0.
  x3 = 0.

  call sub2(n,x1,x2,x3,y1,y2,y3,2,2,2)
  if (sum(x1) /= res_x2) then
     print *, "ng sub2-1 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x2) then
     print *, "ng sub2-1 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x1) then
     print *, "ng sub2-1 ", "x3 = ", sum(x3)
  endif

  call sub2(n,x1,x2,x3,y1,y2,y3,3,3,3)
  if (sum(x1) /= res_x2) then
     print *, "ng sub2-2 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng sub2-2 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x3) then
     print *, "ng sub2-2 ", "x3 = ", sum(x3)
  endif

  x1 = 0.
  x2 = 0.
  x3 = 0.

  call sub3(n,x1,x2,x3,y1,y2,y3,3,3,3)
  if (sum(x1) /= res_x2) then
     print *, "ng sub3-1 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng sub3-1 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x3) then
     print *, "ng sub3-1 ", "x3 = ", sum(x3)
  endif

  call sub3(n,x1,x2,x3,y1,y2,y3,1,1,1)
  if (sum(x1) /= res_x1) then
     print *, "ng sub3-2 ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng sub3-2 ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x1) then
     print *, "ng sub3-2 ", "x3 = ", sum(x3)
  endif

  print *, "ok"

end program main

