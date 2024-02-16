integer,parameter::constvar(4)=DSHIFTR([1_4,-3_4,-1_4,1_4],[0_4,4_4,-1_4,-0_4],30)
integer,parameter::constvar1(4)=DSHIFTR([1_1,-3_1,-1_1,1_1],[0_1,4_1,-1_1,-0_1],8)
integer,parameter::constvar2(4)=DSHIFTR([1_2,-3_2,-1_2,1_2],[0_2,4_2,-1_2,-0_2],16)
integer,parameter::constvar3(4)=DSHIFTR([1_8,-3_8,-1_8,1_8],[0_8,4_8,-1_8,-0_8],64)
if(any(constvar .ne. [4,-12,-1,4]))print*,'100'
if(any(constvar1 .ne. [1,-3,-1,1]))print*,'101'
if(any(constvar2 .ne. [1,-3,-1,1]))print*,'102'
if(any(constvar3 .ne. [1,-3,-1,1]))print*,'103'
print*,"PASS"
end

