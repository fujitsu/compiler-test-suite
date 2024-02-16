integer*4,parameter::a=1
integer*4,parameter::b=16
integer*4,parameter::c=3
integer*4,parameter::constvar=DSHIFTR(a,b,c)
integer*4,parameter::constvar1=DSHIFTR(1_4,16_4,3_4)
integer*4,parameter::constvar2=DSHIFTR(i=a,j=a,shift=2)
integer*4,parameter::constvar3=ISHFTC(i=a,shift=-2)
if(constvar .ne. 536870914 )print*,"100"
if(constvar1 .ne. 536870914 )print*,"101"
if(constvar2 .ne. 1073741824 )print*,"102"
if(constvar3 .ne. 1073741824)print*,"103"
print*,"PASS"
end

