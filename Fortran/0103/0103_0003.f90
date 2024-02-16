integer,parameter,DIMENSION(2,2)::x =reshape((/1,9,45,45,4/),(/2,2/))
integer,parameter,DIMENSION(2,2)::y =reshape((/0,11,44,46,4/),(/2,2/))
integer,parameter::k(2,2) = DSHIFTL(x,y,7)
if(k(1,1) .ne. 128)print*,"100"
if(k(2,1) .ne. 1152)print*,"101"
if(k(1,2) .ne. 5760)print*,"102"
if(k(2,2) .ne. 5760)print*,"103"
if(any(k .ne.reshape([128,1152,5760,5760],[2,2]))) print*,"104"
print*,"PASS"
end
