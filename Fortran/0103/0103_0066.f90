integer,parameter::a=1
integer,parameter::b=1
integer,parameter::c=maskl(a+b,b)

if(c.ne. -64)print*,"100"
print*,"PASS"
end

