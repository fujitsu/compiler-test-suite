real*2::x=4.5,y=6.5
real*4::r4=44.1,res4
real*8::r8=44.1_8, res8
real*16::r16=44.1_16,res16
real*2::rr
integer*1::i1=44_1
integer*2::i2=44_2
integer*4::i4=44_4
rr=min(x,i1) 
if( rr /= x)print*,"101"
rr=min(x,y) 
if( rr /= x)print*,"102"
rr=min(x,i2,i4)
if( rr /= x)print*,"103"
rr=min(x,i4)
if( rr /= x)print*,"104"
res4=min(x,r4) 
if( res4 /= x)print*,"105"
res8=min(x,r8) 
if( res8 /= x)print*,"106" ,r8
res16=min(x,r16) 
if( res16 /= x)print*,"107",r16

print*,"PASS"
end

