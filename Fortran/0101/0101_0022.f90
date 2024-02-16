module m
integer,parameter::a=o'07'
integer,parameter::b=b'101'
integer,parameter::constvar=MERGE_BITS(a,-18,b)
integer,parameter::constvar1=MERGE_BITS(b,j=-1,mask=b)
integer,parameter::constvar2=MERGE_BITS(i=a,j=10,mask=10)
end module

use m
if(constvar .ne. -17)print*,'100'
if(constvar1 .ne. -1)print*,'101'
if(constvar2 .ne. 2)print*,'102'
print*,"PASS"
end

