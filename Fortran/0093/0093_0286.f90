program pro
complex ::c
complex, pointer ::cmp
real :: x1
real :: sfun1
sfun1(c) = c%im
allocate(cmp)
cmp=(3.0,5.0)
x1=sfun1(cmp)
if(x1.ne.5.0) print*,101
print*,"pass"
end
