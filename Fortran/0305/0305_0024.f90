subroutine sub(n,x,y1,y2,y3,aaa)
  real(8),dimension(1:n,1:n) :: x,y1,y2,y3
  integer :: aaa

  do i=1,n
  do j=1,n
     if (aaa == 1) then 
        x(j,i) = y1(j,i) 
     else if (aaa == 2) then 
        x(j,i) = y2(j,i) 
     else if (aaa == 3) then 
        x(j,i) = y3(j,i) 
     endif
  enddo
  enddo
end subroutine sub

program main
  integer,parameter :: n=10
  real(8),parameter :: res_x=200.
  real(8),dimension(1:n,1:n) :: x,y1,y2,y3
  
  x = 0.
  y1 = 1.
  y2 = 2.
  y3 = 3.

  call sub(n,x,y1,y2,y3,2)
  if (sum(x) /= res_x) then
     print *, "ng ", "x = ", sum(x)
  endif

  print *, "ok"

end program main

