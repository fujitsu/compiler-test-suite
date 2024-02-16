integer*4,parameter::constvar1=MERGE_BITS(b'11111111',1_4,z'FF')
integer*4,parameter::constvar2=MERGE_BITS(13_4,j=o'377',mask=z'FF')
integer*4,parameter::constvar3=MERGE_BITS(b'1111111111111111',1_4,z'FFFF')
integer*4,parameter::constvar4=MERGE_BITS(13_4,j=o'177777',mask=z'FFFF')
integer*4,parameter::constvar5=MERGE_BITS(b'11111111111111111111111111111111',18_4,z'FFFFFFFF')
integer*4,parameter::constvar6=MERGE_BITS(13_4,j=o'37777777777',mask=z'FFFFFFFF')
integer*8,parameter::constvar7=MERGE_BITS(b'1111111111111111111111111111111111111111111111111111111111111111',18_8,z'FFFFFFFFFFFFFFFF')
integer*8,parameter::constvar8=MERGE_BITS(13_8,j=o'1777777777777777777777',mask=z'FFFFFFFFFFFFFFFF')
if(constvar1 .ne. 255_4)print*,"100"
if(constvar2 .ne. 13_4)print*,"101"
if(constvar3 .ne. 65535_4)print*,"102"
if(constvar4 .ne. 13_4)print*,"103"
if(constvar5 .ne. -1_4)print*,"104"
if(constvar6 .ne. 13_4)print*,"105"
if(constvar7 .ne. -1_8)print*,"106"
if(constvar8 .ne. 13_8)print*,"107"
print*,"PASS"
end
