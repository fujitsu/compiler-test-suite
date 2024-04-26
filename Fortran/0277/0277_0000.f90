integer,parameter,DIMENSION(2,2,2)::x=reshape((/1,9,45,45,4,32,12,43/),(/2,2,2/))
integer,parameter::k(2,2,2) = SHIFTA(x,3)
integer,parameter::k2(2,2,2) = SHIFTA(x,reshape((/3,2,3,3,3,3,3,0/),(/2,2,2/)))
if(any(k .ne.reshape((/0,1,5,5,0,4,1,5/),(/2,2,2/))))print*,"100"
if(any(k2 .ne.reshape((/0,2,5,5,0,4,1,43/),(/2,2,2/))))print*,"102"
print*,"PASS"
end
