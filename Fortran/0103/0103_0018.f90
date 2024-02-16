integer*4,parameter::a=1
integer*4,parameter::b=2**30_4
integer*4,parameter::c=2
integer,parameter::constvar=DSHIFTL(a,b,c)
integer*4,parameter::constvar1=DSHIFTL(1_4,1073741834_4,2_4)
integer,parameter::constvar2=DSHIFTL(i=a,j=a,shift=2)
integer,parameter::constvar3=ISHFTC(i=a,shift=2)
if(constvar .ne. 5)print*,"100"
if(constvar1 .ne. 5)print*,"101"
if(constvar2 .ne. 4)print*,"102"
if(constvar3 .ne. 4)print*,"103"
print*,"PASS"
end

