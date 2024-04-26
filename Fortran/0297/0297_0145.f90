subroutine sub1(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,aaa)
  real(8),dimension(1:n,1:n,1:n) :: x1,x2,x3,x4,x5,y1,y2,y3,y4,y5
  integer :: aaa

  do i=1,n
  do j=1,n
  do k=1,n
     if (aaa == 1) then 
        x1(k,j,i) = y1(k,j,i) 
     else
        x1(k,j,i) = y2(k,j,i) 
     endif
     if (aaa == 2) then 
        x2(k,j,i) = y2(k,j,i) 
     else
        x2(k,j,i) = y3(k,j,i) 
     endif
     if (aaa == 3) then 
        x3(k,j,i) = y3(k,j,i) 
     else
        x3(k,j,i) = y4(k,j,i) 
     endif
     if (aaa == 4) then 
        x4(k,j,i) = y4(k,j,i) 
     else
        x4(k,j,i) = y5(k,j,i) 
     endif
     if (aaa == 5) then 
        x5(k,j,i) = y5(k,j,i) 
     else
        x5(k,j,i) = y1(k,j,i) 
     endif
  enddo
  enddo
  enddo
end subroutine sub1

subroutine sub2(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,aaa)
  real(8),dimension(1:n,1:n,1:n) :: x1,x2,x3,x4,x5,y1,y2,y3,y4,y5
  integer :: aaa

  do i=1,n
  do j=1,n
  do k=1,n
     if (aaa == 1) then 
        x1(k,j,i) = y1(k,j,i) 
     else
        x1(k,j,i) = y2(k,j,i) 
     endif
     if (aaa == 2) then 
        x2(k,j,i) = y2(k,j,i) 
     else
        x2(k,j,i) = y3(k,j,i) 
     endif
     if (aaa == 3) then 
        x3(k,j,i) = y3(k,j,i) 
     else
        x3(k,j,i) = y4(k,j,i) 
     endif
     if (aaa == 4) then 
        x4(k,j,i) = y4(k,j,i) 
     else
        x4(k,j,i) = y5(k,j,i) 
     endif
     if (aaa == 5) then 
        x5(k,j,i) = y5(k,j,i) 
     else
        x5(k,j,i) = y1(k,j,i) 
     endif
  enddo
  enddo
  enddo
end subroutine sub2

subroutine sub3(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,aaa)
  real(8),dimension(1:n,1:n,1:n) :: x1,x2,x3,x4,x5,y1,y2,y3,y4,y5
  integer :: aaa

  do i=1,n
  do j=1,n
  do k=1,n
     if (aaa == 1) then 
        x1(k,j,i) = y1(k,j,i) 
     else
        x1(k,j,i) = y2(k,j,i) 
     endif
     if (aaa == 2) then 
        x2(k,j,i) = y2(k,j,i) 
     else
        x2(k,j,i) = y3(k,j,i) 
     endif
     if (aaa == 3) then 
        x3(k,j,i) = y3(k,j,i) 
     else
        x3(k,j,i) = y4(k,j,i) 
     endif
     if (aaa == 4) then 
        x4(k,j,i) = y4(k,j,i) 
     else
        x4(k,j,i) = y5(k,j,i) 
     endif
     if (aaa == 5) then 
        x5(k,j,i) = y5(k,j,i) 
     else
        x5(k,j,i) = y1(k,j,i) 
     endif
  enddo
  enddo
  enddo
end subroutine sub3

subroutine sub4(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,aaa)
  real(8),dimension(1:n,1:n,1:n) :: x1,x2,x3,x4,x5,y1,y2,y3,y4,y5
  integer :: aaa

  do i=1,n
  do j=1,n
  do k=1,n
     if (aaa == 1) then 
        x1(k,j,i) = y1(k,j,i) 
     else
        x1(k,j,i) = y2(k,j,i) 
     endif
     if (aaa == 2) then 
        x2(k,j,i) = y2(k,j,i) 
     else
        x2(k,j,i) = y3(k,j,i) 
     endif
     if (aaa == 3) then 
        x3(k,j,i) = y3(k,j,i) 
     else
        x3(k,j,i) = y4(k,j,i) 
     endif
     if (aaa == 4) then 
        x4(k,j,i) = y4(k,j,i) 
     else
        x4(k,j,i) = y5(k,j,i) 
     endif
     if (aaa == 5) then 
        x5(k,j,i) = y5(k,j,i) 
     else
        x5(k,j,i) = y1(k,j,i) 
     endif
  enddo
  enddo
  enddo
end subroutine sub4

program main
  integer,parameter :: n=3
  real(8),parameter :: res_x1=27., res_x2=54., res_x3=81.,  res_x4=108.,  res_x5=135.
  real(8),parameter :: res_0=0.
  real(8),dimension(1:n,1:n,1:n) :: x1,x2,x3,x4,x5,y1,y2,y3,y4,y5
  
  x1 = 0.
  x2 = 0.
  x3 = 0.
  x4 = 0.
  x5 = 0.
  y1 = 1.
  y2 = 2.
  y3 = 3.
  y4 = 4.
  y5 = 5.

  call sub1(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,1)
  if (sum(x1) /= res_x1) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x4) then
     print *, "ng ", "x3 = ", sum(x3)
  else if (sum(x4) /= res_x5) then
     print *, "ng ", "x4 = ", sum(x4)
  else if (sum(x5) /= res_x1) then
     print *, "ng ", "x5 = ", sum(x5)
  endif

  x1 = 0.
  x2 = 0.
  x3 = 0.
  x4 = 0.
  x5 = 0.

  call sub2(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,3)
  if (sum(x1) /= res_x2) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x3) then
     print *, "ng ", "x3 = ", sum(x3)
  else if (sum(x4) /= res_x5) then
     print *, "ng ", "x4 = ", sum(x4)
  else if (sum(x5) /= res_x1) then
     print *, "ng ", "x5 = ", sum(x5)
  endif

  x1 = 0.
  x2 = 0.
  x3 = 0.
  x4 = 0.
  x5 = 0.

  call sub3(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,5)
  if (sum(x1) /= res_x2) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x4) then
     print *, "ng ", "x3 = ", sum(x3)
  else if (sum(x4) /= res_x5) then
     print *, "ng ", "x4 = ", sum(x4)
  else if (sum(x5) /= res_x5) then
     print *, "ng ", "x5 = ", sum(x5)
  endif


  x1 = 0.
  x2 = 0.
  x3 = 0.
  x4 = 0.
  x5 = 0.

  call sub3(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,4)
  if (sum(x1) /= res_x2) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x4) then
     print *, "ng ", "x3 = ", sum(x3)
  else if (sum(x4) /= res_x4) then
     print *, "ng ", "x4 = ", sum(x4)
  else if (sum(x5) /= res_x1) then
     print *, "ng ", "x5 = ", sum(x5)
  endif

  print *, "ok"

end program main

