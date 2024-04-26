integer,parameter,DIMENSION(2,2,2)::x = reshape((/1,9,45,45,65,45,45,65/),(/2,2,2/))
integer,parameter::k(2,2) = maxloc(x, dim=2, mask=.true., kind=4, back=.true.)
integer ::m(2,2) 
m = maxloc(x, dim=2, mask=.true., kind=4, back=.true.)
if(any(k .ne. m))print*,"100"
if(any(k .ne.reshape((/2,2,1,2/),(/2,2/))))print*,"101"
print*,"PASS"
end
