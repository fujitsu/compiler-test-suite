integer,parameter,DIMENSION(2,2,2)::x=reshape((/1,9,45,45,4,32,12,43/),(/2,2,2/))
integer,parameter::k(2,2,2) = SHIFTR(x,3)
if(any(k .ne.reshape((/0,1,5,5,0,4,1,5/),(/2,2,2/))))print*,"100"
print*,"PASS"

end
