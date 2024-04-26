real*2::x=4.5,y=6.5
real*4::r4=44.1,res4
real*8::r8=44.1_8, res8
real*16::r16=44.1_16,res16
real*2::rr
integer*1::i1=44_1
integer*2::i2=44_2
integer*4::i4=44_4
rr=max(x,i1) 
if( rr /= 44.0)print*,"101"
rr=max(x,y) 
if( rr /= y)print*,"102"
rr=max(x,i2,i4)
if( rr /= 44.0)print*,"103"
rr=max(x,i4)
if( rr /= 44.0)print*,"104"
res4=max(x,r4) 
if( res4 /= r4)print*,"105"
res8=max(x,r8) 
if( res8 /= r8)print*,"106" ,r8
res16=max(x,r16) 
if( res16 /= r16)print*,"107",r16

print*,"PASS"
end

