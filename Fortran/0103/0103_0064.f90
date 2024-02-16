integer,parameter::a=1
integer,parameter::b=1
integer,parameter::c=maskl(a,b)
integer,parameter::d=maskr(a,b)

if(c.ne. -128)print*,"100"
if(d.ne. 1)print*,"101"
print*,"PASS"
end

