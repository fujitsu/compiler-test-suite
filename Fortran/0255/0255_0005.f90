Program test
real,parameter::r1(3,4) =reshape([1.0,3.0,2.0,4.0,2.6,8.0,1.2,2.4,5.6,3.4,5.4,2.4],[3,4])
real::x1(3)=norm2(x = r1 ,DIM=2)
if(x1(1)<=5.4772.and.x1(1)>=5.4773)print*,101
if(x1(2)<=7.1189.and.x1(2)>=7.1190)print*,102
if(x1(3)<=10.2528.and.x1(3)>=10.253)print*,103
print*,"pass"
end
