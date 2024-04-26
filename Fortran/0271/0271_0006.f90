real*2,parameter::x=4.5,y=6.5
real*2::rr
rr=max(x,44_1) 
if( rr /= 44.0)print*,"101"
rr=max(x,y) 
if( rr /= y)print*,"102"
rr=max(x,44_2,44_4)
if( rr /= 44.0)print*,"103"
rr=max(x,44_4)
if( rr /= 44.0)print*,"104"
rr=max(x,44.1_4) 
if( abs(rr - 44.1)>0.1)print*,"105"
rr=max(x,44.1_8) 
if( abs(rr - 44.1)>0.1)print*,"106"
rr=max(x,44.1_16) 
if( abs(rr - 44.1)>0.1)print*,"107"

print*,"PASS"
end

