program pro
implicit none
real :: x
integer ::  d=2
x=NORM2((/2.0,3.0,5.0,6.0/),d-1)
if(.not.(x<=8.7 .and. x>=8.5)) print*,101
print*,"pass"
end
