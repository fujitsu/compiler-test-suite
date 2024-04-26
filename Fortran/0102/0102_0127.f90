integer,parameter,DIMENSION(2,2)::x = reshape((/1,9,45,45/),(/2,2/))
integer,parameter::k(2) = maxloc(x, dim=1,mask=x<45,kind=4, back=.true.)
integer ::m(2) 
m = maxloc(x, dim=1,mask=x<45,kind=4, back=.true.)
if(any(k .ne. m ))print*,"100"
if(any(k.ne.[2,0]))print*,"101"
print*,"PASS"
end
