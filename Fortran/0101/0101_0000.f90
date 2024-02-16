integer,parameter::constvar=MERGE_BITS(13_1,18_1,22_1)
integer,parameter::constvar1=MERGE_BITS(13_2,18_2,22_2)
integer,parameter::constvar2=MERGE_BITS(13_4,18_4,22_4)
integer,parameter::constvar3=MERGE_BITS(13_8,18_8,22_8)
if(constvar .ne. 4)print*,"100"
if(constvar1 .ne. 4)print*,"101"
if(constvar2 .ne. 4)print*,"102"
if(constvar3 .ne. 4)print*,"103"
print*,"PASS"
end
