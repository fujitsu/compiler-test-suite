integer*1,parameter::a=33
integer*1,parameter::b=8
integer*8,parameter::c=maskr(a,b)
if(c.ne.8589934591_8)print*,"100"
print*,"PASS"
end

