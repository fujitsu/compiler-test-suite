integer,parameter::constvar=MERGE_BITS(b'1011',5,-13)
integer,parameter::constvar1=MERGE_BITS(0,j=-22,mask=z'20')
integer,parameter::constvar2=MERGE_BITS(o'17',45,mask=o'05')
integer,parameter::constvar3=MERGE_BITS(i=22,j=z'0A',mask=b'101')
integer,parameter::constvar4=MERGE_BITS(i=z'0f',j=18,mask=z'19')
integer,parameter::constvar5=MERGE_BITS(i=15,j=b'110',mask=-2)
integer,parameter::constvar6=MERGE_BITS(i=11,j=o'20',mask=z'19')
if(constvar .ne. 7)print*,"100"
if(constvar1 .ne. -54)print*,"101"
if(constvar2 .ne. 45)print*,"102"
if(constvar3 .ne. 14)print*,"103"
if(constvar4 .ne. 11)print*,"103"
if(constvar5 .ne. 14)print*,"103"
if(constvar6 .ne. 9)print*,"103"
print*,"PASS"
end

