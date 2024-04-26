integer,allocatable,dimension(:)::x
call sub(x,x)
if(x(1)==10 .and. x(2)==10 .and. x(3)==10 .and. x(4)==10 .and. x(5)==30 ) then
  print *,'pass'
else
  print *,'ng',x
end if
contains
subroutine sub(xx,yy)
    integer,allocatable,dimension(:) :: xx , yy
     allocate(xx(5))
  x=0
     yy=50+xx
     xx=10
     yy(5) = 30
end subroutine 
end
