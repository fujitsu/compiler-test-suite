Program test
Real::x = norm2([0.0,0.0,0.0])
Real::y(3) = norm2(reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[2,3]),1)
if(x.ne.0.0)print*,"101"
if(y(1).ne.0.0)print*,"102"
if(y(2).ne.0.0)print*,"103"
if(y(3).ne.0.0)print*,"104"
print*,"pass"
 End 

