integer,parameter,DIMENSION(2,2)::x =reshape((/1,9,45,45/),(/2,2/))
integer,parameter,DIMENSION(2,2)::y =reshape((/0,11,44,46/),(/2,2/))
logical,parameter::k(2,2) = BLE(x,y)
if((any(k .neqv. reshape([.false.,.true.,.false.,.true.],[2,2]))))print*,"100"
print*,"PASS"
end
