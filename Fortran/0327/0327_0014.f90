integer,allocatable,dimension(:)::x,y
call sub(x,y)
if(x(1)==10 .and. x(2)==10 .and. x(3)==10 .and.x(4)==10 .and.x(5)==10 .and. y(1)==50 .and. y(2)==50 .and. y(3)==50 .and. y(4)==50 .and. y(5)==30 ) then
  print *,'pass'
else
  print *,'ng',x
end if
contains
subroutine sub(xx,yy)
  integer,allocatable,dimension(:) :: xx , yy
  allocate(xx(5))
  allocate(yy(5))
  x=0
  y=0
  yy=50+xx
  xx=10
  yy(5) = 30
end subroutine 
end
