Program test
real,parameter::x1(2,2,2)= reshape([3.0,4.0,9.0,0.0,3.0,4.0,3.0,4.0],[2,2,2])
real::y(2,2) = NORM2(x1,1)
if(y(1,1).ne.5.0)print*,101
if(y(1,2).ne.5.0)print*,102
if(y(2,1).ne.9.0)print*,103
if(y(2,2).ne.5.0)print*,104
print*,"pass"
end
