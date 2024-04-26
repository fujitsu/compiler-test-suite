subroutine sub1(n,x1,x2,x3,y1,y2,y3,aaa)
  real(8),dimension(1:n,1:n,1:n) :: x1,x2,x3,y1,y2,y3
  integer :: aaa

  do i=1,n
  do j=1,n
  do k=1,n
     if (aaa == 1) then 
        x1(k,j,i) = y1(k,j,i) 
     endif
  enddo
  enddo
  enddo
end subroutine sub1

program main
  integer,parameter :: n=4
  real(8),parameter :: res_x1=64., res_x2=128., res_x3=192.
  real(8),parameter :: res_0=0.
  real(8),dimension(1:n,1:n,1:n) :: x1,x2,x3,y1,y2,y3
  
  x1 = 0.
  x2 = 0.
  x3 = 0.
  y1 = 1.
  y2 = 2.
  y3 = 3.

  call sub1(n,x1,x2,x3,y1,y2,y3,1)
  if (sum(x1) /= res_x1) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_0) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_0) then
     print *, "ng ", "x3 = ", sum(x3)
  endif

  call sub1(n,x1,x2,x3,y1,y2,y3,2)
  if (sum(x1) /= res_x1) then
     print *, "ng ", "x1 = ", sum(x1)
  else if (sum(x2) /= res_0) then
     print *, "ng ", "x2 = ", sum(x2)
  else if (sum(x3) /= res_0) then
     print *, "ng ", "x3 = ", sum(x3)
  endif

  print *, "ok"

end program main

