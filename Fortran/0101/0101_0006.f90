integer,parameter::c=MERGE_BITS(Z'FF',16,mask=0)
integer,parameter::b=MERGE_BITS(Z'FF',j=0,mask=0)
integer,parameter::a=MERGE_BITS(i=0,j=0,mask=0)
if(c .ne. 16)print*,"100"
if(b .ne. 0)print*,"101"
if(a .ne. 0)print*,"102"
print*,"PASS"
end

