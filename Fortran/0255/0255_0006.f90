Program test
real,parameter::r1(2,2) = reshape([3.0,4.0,3.0,4.0],[2,2])
integer,parameter::x = 1
real::r2(2) = NORM2(x=r1,dim=x)
if(r2(1).ne.5.0)print*,102
if(r2(2).ne.5.0)print*,103
print*,"pass"
end
