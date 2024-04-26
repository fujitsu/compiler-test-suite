integer,parameter,DIMENSION(2,2)::x =reshape((/0,9,45,129/),(/2,2/))
integer,parameter::k(2,2) = SHIFTL(x,2)
if(any(k .ne. reshape((/0,36,180,516/),(/2,2/))))print*,"100"
print*,"PASS"
end
