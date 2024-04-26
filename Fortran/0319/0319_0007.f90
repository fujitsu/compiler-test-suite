module models
   complex           :: gtx(100, 6)
   real              :: x(100)
   real, allocatable :: y(:), z(:,:)
   integer              crx, gt, mr2
end module

program main
use models
gtx(70,5)=(70.5,50.7)
call a
x(22)=22.2
allocate (y(9))
y(9)=99.99
call b
allocate (z(6,7))
z(4,2) = 4.2
call check
end
subroutine a
end
subroutine b
end
subroutine check
use models
if ( gtx(70,5).ne.(70.5,50.7) ) then
  print *,'ng 1'
else if ( x(22).ne.22.2 ) then
  print *,'ng 2'
else if ( y(9).ne.99.99 ) then
  print *,'ng 3'
else if ( z(4,2).ne.4.2 ) then
  print *,'ng 4'
else
  print *,'ok'
endif
end subroutine check
