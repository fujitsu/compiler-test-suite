program pro
complex ::c
real :: x1
real :: sfun1
sfun1(c) = c%im
x1=sfun1((3.0,5.0))
if(x1.ne.5.0) print*,101,x1
print*,"pass"
end
