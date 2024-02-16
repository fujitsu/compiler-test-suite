integer,parameter::constvar(4)=DSHIFTL([1_4,-4_4,-1_4,1_4],[0_4,4_4,3_4,-0_4],[1,0,0,32])
integer,parameter::constvar1(4)=DSHIFTL([1_2,-4_2,-1_2,1_2],[0_2,4_2,3_2,-0_2],[1,0,0,16])
integer,parameter::constvar2(4)=DSHIFTL([1_1,-4_1,-1_1,1_1],[0_1,4_1,3_1,-0_1],[1,0,0,8])
integer,parameter::constvar3(4)=DSHIFTL([1_8,-4_8,-1_8,1_8],[0_8,4_8,3_8,-0_8],[1,0,0,64])
if(constvar(1) .ne. 2)print*,'100'
if(constvar(2) .ne.-4)print*,'101'
if(constvar(3) .ne.-1)print*,'102'
if(constvar(4) .ne. 0)print*,'103'
if(any(constvar1 .ne. [2,-4,-1,0]))print*,'104'
if(any(constvar2 .ne. [2,-4,-1,0]))print*,'105'
if(any(constvar3 .ne. [2,-4,-1,0]))print*,'106'
print*,"PASS"
end

