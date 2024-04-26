Program test
real,parameter::x1(2,2) =reshape([3.0,4.0,3.0,4.0],[2,2])
real::r(2)=norm2(DIM =1 , X = x1)
if(r(1).ne.5.0)print*,101
if(r(2).ne.5.0)print*,102
print*,"pass"
end
