Program test
real,parameter::r1(2,2) = reshape([1.0,3.0,2.0,4.0],[2,2])
real::x1(2)=norm2(r1 ,DIM= 1)
if(x1(1)<=3.1622.and.x1(1)>=3.1623)print*,101
if(x1(2)<=4.4721.and.x1(2)>=4.4722)print*,101
print*,"pass"
end
