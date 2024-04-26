program pro
implicit none
integer :: d
real :: x(2)
d=1
x=NORM2(RESHAPE([real(8)::3.0,4.0,2.0,5.0],[2,2]),d)
if(.not.(x(1)<=5.1 .and. x(1)>=4.9)) print*,101
if(.not.(x(2)<=5.4 .and. x(2)>=5.2)) print*,102
if(kind( NORM2(RESHAPE([real(8)::3.0,4.0,2.0,5.0],[2,2]),d)).ne.8) print*,103
print*,"pass"
end
