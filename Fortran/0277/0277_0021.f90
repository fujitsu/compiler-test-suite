integer*4,parameter::a=12
integer*4,parameter::b=b'00000010'
integer*4,parameter::c=shiftl(a+b,b+a)
integer*4,parameter::d=shiftr(a+b,b+a)
if(c .ne. 229376)print*,"100"
if(d .ne. 0)print*,"101"
print*,"PASS"
end
