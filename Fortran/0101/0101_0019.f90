integer,parameter::constvar1(3)=MERGE_BITS(i=[3,5,0],j=z'1F',mask=[2,-3,6])
integer,parameter::constvar2(3)=MERGE_BITS(z'12',[-2,-3,-1],[4564,966,543])
integer,parameter::constvar3(3)=MERGE_BITS(b'10110',[-2,-3,-1],mask=[4564,966,543])
integer,parameter::constvar4(3)=MERGE_BITS(i=o'022',j=[-2,-3,-1],mask=b'1101')
integer,parameter::constvar5(3)=MERGE_BITS(i=[3,5,0],j=o'07',mask=[2,-3,6])
integer,parameter::constvar6(3)=MERGE_BITS([-2,-3,-1],b'101',[4564,966,543])
if(any(constvar1 .ne. [31,7,25]))print*,"100"
if(any(constvar2 .ne. [-4550,-965,-526]))print*,"101"
if(any(constvar3 .ne. [-4546, -961, -522]))print*,"102"
if(any(constvar4 .ne. [-14,-16,-14]))print*,"103"
if(any(constvar5 .ne. [7, 7 ,1]))print*,"104"
if(any(constvar6 .ne. [4565,965,543]))print*,"105"
print*,"PASS"
end
