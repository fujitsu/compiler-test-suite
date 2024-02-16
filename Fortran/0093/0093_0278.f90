program pro
real ::c
complex ::c1
complex ::c2
real ::rr
complex ::cmp1
complex ::cmp2(2)
real :: x1
real :: sfun1
sfun1(c1,c,c2) = real(c1)+c2%im-rr
rr=3.0
cmp1=(2.0,5.0)
cmp2(1)=(1.0,2.0)
cmp2(2)=(3.0,8.0)
x1=sfun1(cmp1,rr,cmp2(2))
if(x1.ne.7.0) print*,101,x1
print*,"pass"
end
