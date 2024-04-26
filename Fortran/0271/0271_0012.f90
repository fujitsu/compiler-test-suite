real*2,parameter::x=4.5,y=6.5
real*2::rr
rr=min(x,44_1) 
if( rr /= x)print*,"101"
rr=min(x,y) 
if( rr /= x)print*,"102"
rr=min(x,44_2,44_4)
if( rr /= x)print*,"103"
rr=min(x,44_4)
if( rr /= x)print*,"104"
rr=min(x,44.1_4) 
if( rr /= x)print*,"105"
rr=min(x,44.1_8) 
if( rr /= x)print*,"106"
rr=min(x,44.1_16) 
if( rr /= x)print*,"107"
print*,"PASS"
end

