integer,parameter,DIMENSION(3,3)::x = reshape((/1,9,45,45,65,45,45,65,45/),(/3,3/))
integer,parameter::k(3) = maxloc(x, dim=2, mask=.true., kind=4, back=.true.)
integer ::m(3) 
m = maxloc(x, dim=2, mask=.true., kind=4, back=.true.)
if(any(k.ne.m))print*,"100"
if(any(k.ne.[3,3,3]))print*,"101"
print*,"PASS"
end
