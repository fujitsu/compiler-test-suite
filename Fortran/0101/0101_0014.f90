integer,parameter::constvar=kind(MERGE_BITS(13_1,18_1,22_1))
integer,parameter::constvar1=kind(MERGE_BITS(Z'0A',18_2,22_2))
integer,parameter::constvar2=kind(MERGE_BITS(13_4,b'101',22_4))
integer,parameter::constvar3=kind(MERGE_BITS(13_8,18_8,22_8))
if(constvar .ne. 1)print*,"100"
if(constvar1 .ne. 2)print*,"101"
if(constvar2 .ne. 4)print*,"102"
if(constvar3 .ne. 8)print*,"103"
print*,"PASS"
end
