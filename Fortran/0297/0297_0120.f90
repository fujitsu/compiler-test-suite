subroutine sub1(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,aaa,z1)
  real(8),dimension(1:n) :: x1,x2,x3,x4,x5,y1,y2,y3,y4,y5
  integer :: aaa,z1

  do i=1,n
     if (aaa == 1) then 
        x1(i) = y1(i) 
     else if (z1 == 1) then 
        x1(i) = y2(i) 
     else if (z1 == 2) then 
        x1(i) = y3(i) 
     endif
     if (aaa == 2) then 
        x2(i) = y2(i) 
     else if (z1 == 1) then 
        x2(i) = y3(i) 
     endif
     if (aaa == 3) then 
        x3(i) = y3(i) 
     else if (z1 == 1) then 
        x3(i) = y4(i) 
     endif
     if (aaa == 4) then 
        x4(i) = y4(i) 
     else if (z1 == 1) then 
        x4(i) = y5(i) 
     endif
     if (aaa == 5) then 
        x5(i) = y5(i) 
     else if (z1 == 1) then 
        x5(i) = y1(i) 
     endif
  enddo
end subroutine sub1

subroutine sub2(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,aaa,z1)
  real(8),dimension(1:n) :: x1,x2,x3,x4,x5,y1,y2,y3,y4,y5
  integer :: aaa,z1

  do i=1,n
     if (aaa == 1) then 
        x1(i) = y1(i) 
     else if (z1 == 1) then 
        x1(i) = y2(i) 
     endif
     if (aaa == 2) then 
        x2(i) = y2(i) 
     else if (z1 == 1) then 
        x2(i) = y3(i) 
     endif
     if (aaa == 3) then 
        x3(i) = y3(i) 
     else if (z1 == 1) then 
        x3(i) = y4(i) 
     endif
     if (aaa == 4) then 
        x4(i) = y4(i) 
     else if (z1 == 1) then 
        x4(i) = y5(i) 
     else if (z1 == 2) then 
        x4(i) = y1(i) 
     else if (z1 == 3) then 
        x4(i) = y2(i) 
     else
        x4(i) = y3(i) 
     endif
     if (aaa == 5) then 
        x5(i) = y5(i) 
     else if (z1 == 1) then 
        x5(i) = y1(i) 
     endif
  enddo
end subroutine sub2

subroutine sub3(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,aaa,z1)
  real(8),dimension(1:n) :: x1,x2,x3,x4,x5,y1,y2,y3,y4,y5
  integer :: aaa,z1

  do i=1,n
     if (aaa == 1) then 
        x1(i) = y1(i) 
     else if (z1 == 1) then 
        x1(i) = y2(i) 
     endif
     if (aaa == 2) then 
        x2(i) = y2(i) 
     else if (z1 == 1) then 
        x2(i) = y3(i) 
     else if (z1 == 0) then 
        x2(i) = y3(i) 
     else if (aaa == 4) then 
        x2(i) = y3(i) 
     endif
     if (aaa == 3) then 
        x3(i) = y3(i) 
     else if (z1 == 1) then 
        x3(i) = y4(i) 
     endif
     if (aaa == 4) then 
        x4(i) = y4(i) 
     else if (z1 == 1) then 
        x4(i) = y5(i) 
     endif
     if (aaa == 5) then 
        x5(i) = y5(i) 
     else if (z1 == 1) then 
        x5(i) = y1(i) 
     endif
  enddo
end subroutine sub3

program main
  integer,parameter :: n=10
  real(8),parameter :: res_x1=10., res_x2=20., res_x3=30.,  res_x4=40.,  res_x5=50.
  real(8),parameter :: res_0=0.
  real(8),dimension(1:n) :: x1,x2,x3,x4,x5,y1,y2,y3,y4,y5
  
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

  call sub1(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,2,1)
  if (sum(x1) /= res_x2) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x2) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x4) then
     print *, "ng ", "x3 = ", sum(x3)
  else if (sum(x4) /= res_x5) then
     print *, "ng ", "x4 = ", sum(x4)
  else if (sum(x5) /= res_x1) then
     print *, "ng ", "x5 = ", sum(x5)
  endif

  call sub1(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,2,2)
  if (sum(x1) /= res_x3) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x2) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x4) then
     print *, "ng ", "x3 = ", sum(x3)
  else if (sum(x4) /= res_x5) then
     print *, "ng ", "x4 = ", sum(x4)
  else if (sum(x5) /= res_x1) then
     print *, "ng ", "x5 = ", sum(x5)
  endif

  call sub2(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,3,3)
  if (sum(x1) /= res_x3) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x2) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x3) then
     print *, "ng ", "x3 = ", sum(x3)
  else if (sum(x4) /= res_x2) then
     print *, "ng ", "x4 = ", sum(x4)
  else if (sum(x5) /= res_x1) then
     print *, "ng ", "x5 = ", sum(x5)
  endif

  call sub3(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,4,10)
  if (sum(x1) /= res_x3) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_x3) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_x3) then
     print *, "ng ", "x3 = ", sum(x3)
  else if (sum(x4) /= res_x4) then
     print *, "ng ", "x4 = ", sum(x4)
  else if (sum(x5) /= res_x1) then
     print *, "ng ", "x5 = ", sum(x5)
  endif

  call sub3(n,x1,x2,x3,x4,x5,y1,y2,y3,y4,y5,4,1)
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

