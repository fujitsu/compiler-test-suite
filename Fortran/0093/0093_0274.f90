program pro
complex ::c
complex ::cmp(2)
real :: x1
real :: sfun1
sfun1(c) = c%im
cmp(1)=(3.0,5.0)
cmp(2)=(4.0,2.0)
x1=sfun1(cmp(2))
if(x1.ne.2.0) print*,101,x1
print*,"pass"
end
