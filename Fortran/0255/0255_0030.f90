integer,parameter::x(2) =shape(Norm2(reshape([3.0,4.0,3.0,4.0,3.0,4.0,3.0,4.0],[2,2,2]),1))
real,parameter::y = sum(norm2(reshape([3.0,4.0,3.0,4.0],[2,2]),1))
real,parameter::z = sum(norm2(reshape([3.0,4.0,3.0,4.0],[2,2]),1)) + norm2(reshape([3.0,4.0],[2]))
integer,parameter::k =size(Norm2(reshape([3.0,4.0,3.0,4.0],[2,2]),1))
if(x(1).ne.2)print*,"101"
if(x(2).ne.2)print*,"101"
if(y.ne.10.0)print*,"102"
if(z.ne.15.0)print*,"103"
if(k.ne.2)print*,"104"
print*,"pass"
end
