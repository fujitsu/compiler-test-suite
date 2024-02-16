integer*1,parameter::a=33
integer*1,parameter::b=8
integer*8,parameter::c=maskl(a,b)
if(c.ne.-2147483648_8)print*,"100"
print*,"PASS"
end

