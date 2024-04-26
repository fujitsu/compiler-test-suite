integer,parameter,DIMENSION(3,2,2)::x = reshape((/1,9,45,45,65,45,45,65,3,54,76,89/),(/3,2,2/))
integer,parameter::l(3,2) = maxloc(x, dim=3, mask=.true., kind=4,back=.true.)
integer::m(3,2) 
m = maxloc(x, dim=3, mask=.true., kind=4,back=.true.)
if(any(l .ne. m ))print*,"100"
if(any(l .ne. reshape((/2,2,1,2,2,2/),(/3,2/))))print*,"101"
print*,"PASS"
end
