Program test
real,parameter::a1(2,3) = reshape([3.0,4.0,3.0,3.0,10.4,20.3],[2,3])
integer::x(3) =norm2(a1,2*10-19)
if(x(1).ne.5.0)print*,101
print*,"pass"
end
