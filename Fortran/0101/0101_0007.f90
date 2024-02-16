integer,parameter,DIMENSION(2,2)::x =reshape((/1,9,45,45/),(/2,2/))
integer,parameter,DIMENSION(2,2)::y =reshape((/0,11,44,46/),(/2,2/))
integer,parameter,DIMENSION(2,2)::z =reshape((/1,34,456,56/),(/2,2/))
integer,parameter::k(2,2) = MERGE_BITS(x,y,z)
if((any(k .ne.reshape([1,9,44,46],[2,2]))))print*,"100"
print*,"PASS"
end
