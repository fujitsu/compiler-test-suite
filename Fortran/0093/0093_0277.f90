program pro
real ::c
complex ::c1
real ::rr
complex ::cmp
real :: x1
real :: sfun1
sfun1(c,c1) = c+c1%im
rr=3.0
cmp=(2.0,5.0)
x1=sfun1(rr,cmp+(1,1))
if(x1.ne.9.0) print*,101,x1
print*,"pass"
end
