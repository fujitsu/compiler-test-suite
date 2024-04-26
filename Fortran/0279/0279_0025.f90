integer,parameter,DIMENSION(2,2)::x =reshape((/1,9,31,16/),(/2,2/))
integer*4,parameter::k(2,2) = poppar(I=x)
if(k(1,1).ne.1)print*,"100"
if(k(1,2).ne.1)print*,"101"
if(k(2,1).ne.0)print*,"102"
if(k(2,2).ne.1)print*,"103"
print*,"PASS"
end

