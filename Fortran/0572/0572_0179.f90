integer*8::a(5) =[1,2,3,4,5]
real*16::b(5) = 10.0
integer*8::y = kind(rank(a))
integer*4::z = kind(rank(b))
if(y.ne.4)print*,"101"
if(z.ne.4)print*,"102"
print*,"pass"
end
