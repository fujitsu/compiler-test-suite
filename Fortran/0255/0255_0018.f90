program test
REAL,parameter::x(2,2) = reshape([3.0,4.0,3.0,4.0],[2,2])
integer(8),parameter::d =1
REAL::y(2) = NORM2(x,d)
if(y(1).ne.5.0)print*,"101"
if(y(2).ne.5.0)print*,"102"
print*,"pass"
end
