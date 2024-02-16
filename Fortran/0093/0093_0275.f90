program pro
complex ::c
complex, parameter ::c1 = (4.0,2.0)
complex ::cmp
real :: x1
real :: sfun1
sfun1(c) = c%im+c1%re
cmp=(3.0,5.0)
x1=sfun1(cmp)
if(x1.ne.9.0) print*,101
print*,"pass"
end
