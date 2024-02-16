integer*4,parameter,DIMENSION(2,2)::x =reshape((/1,9,45,45,4/),(/2,2/))
integer*4,parameter,DIMENSION(2,2)::y =reshape((/0,11,44,46,4/),(/2,2/))
integer*4,parameter::k(2,2) = DSHIFTR(x,y,31)
if(k(1,1) .ne. 2)print*,"100"
if(k(2,1) .ne. 18)print*,"101"
if(k(1,2) .ne. 90)print*,"102"
if(k(2,2) .ne. 90)print*,"103"
print*,"PASS"
end
