integer*4,parameter::a(4)=[-7923579_4,-1_4,0_4,3532_4]
integer*4,parameter::b(4)=[-294375_4,-11_4,10_4,8745_4]
integer*4,parameter::constvar(4)=MERGE_BITS(a,18_4,b)
integer*4,parameter::constvar1(4)=MERGE_BITS(a,a,b)
integer*4,parameter::constvar2(4)=MERGE_BITS(a,j=b,mask=b)
integer*4,parameter::constvar3(4)=MERGE_BITS(a,a,a)
if(any(constvar .ne. [-8191997_4, -9_4, 16_4, 26_4]))print*,"100"
if(any(constvar1 .ne. [-7923579_4, -1_4, 0_4 ,3532_4]))print*,"101"
if(any(constvar2 .ne. [-8191999_4, -11_4, 0_4, 8_4]))print*,"102"
if(any(constvar3 .ne. [-7923579_4, -1_4, 0_4 ,3532_4]))print*,"103"
print*,"PASS"
end
