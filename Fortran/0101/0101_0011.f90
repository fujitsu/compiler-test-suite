integer,parameter::a=10
integer,parameter::b=-33
integer,parameter::c=-1
integer,parameter::constvar=MERGE_BITS(a,b,c)
integer,parameter::constvar1=MERGE_BITS(a,j=b,mask=c)
integer,parameter::constvar2=MERGE_BITS(a,b,mask=c)
integer,parameter::constvar3=MERGE_BITS(i=a,j=b,mask=c)
if(constvar .ne. 10)print*,"100"
if(constvar1 .ne. 10)print*,"101"
if(constvar2 .ne. 10)print*,"102"
if(constvar3 .ne. 10)print*,"103"
print*,"PASS"
end
