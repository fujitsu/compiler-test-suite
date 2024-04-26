integer,parameter,DIMENSION(2,2,2)::x=reshape((/1,9,45,45,4,32,12,43/),(/2,2,2/))
integer,parameter::k(2,2,2) = SHIFTL(x,3)
if(any(k .ne.reshape((/8,72,360,360,32,256,96,344/),(/2,2,2/))))print*,"100"
print*,"PASS"
end
