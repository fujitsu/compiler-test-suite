program pro
implicit none
real :: x
x=NORM2(RESHAPE([real(8)::3.0,4.0],[2]),1)
if(.not.(x<=5.1 .and. x>=4.9)) print*,101
if(kind( NORM2(RESHAPE([real(8)::3.0,4.0],[2]),1)).ne.8) print*,102
print*,"pass"
end
