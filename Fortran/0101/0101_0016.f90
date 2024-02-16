integer,parameter::a=10
integer,parameter::b=-33
integer,parameter::c=-1
integer,parameter::constvar1=MERGE_BITS(a,mask=b,j=c)
integer,parameter::constvar2=MERGE_BITS(j=a,i=b,mask=c)
integer,parameter::constvar3=MERGE_BITS(mask=a,i=b,j=c)
if(constvar1 .ne. 42)print*,"101"
if(constvar2 .ne. -33)print*,"102"
if(constvar3 .ne. -1)print*,"103"
print*,"PASS"
end

