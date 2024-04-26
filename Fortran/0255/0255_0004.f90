Program test
real,parameter::r1(3,4) =reshape([1.0,3.0,2.0,4.0,2.6,8.0,1.2,2.4,5.6,3.4,5.4,2.4],[3,4])
real::x1(4)=norm2(x = r1 ,DIM=1)
if((x1(1).lt.3.7416).or.(x1(1).gt.3.7417))print*,101
if((x1(2).lt.9.3145).or.(x1(2).gt.9.3146))print*,102
if((x1(3).lt.6.2096).or.(x1(3).gt.6.2097))print*,103
if((x1(4).lt.6.8176).or.(x1(4).gt.6.8177))print*,104
print*,"pass"
end
