Program test
real(kind=8),parameter::a1(2) = [3.0,4.0]
integer::x =kind( norm2(a1))
if(x.ne.8)print*,101
print*,"pass"
end
