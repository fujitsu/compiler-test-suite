integer,parameter,DIMENSION(2,2)::x =reshape((/0,9,45,129/),(/2,2/))
integer,parameter::k(2,2) = SHIFTR(x,2)
if(any(k .ne. reshape((/0,2,11,32/),(/2,2/))))print*,"100"
print*,"PASS"
end
