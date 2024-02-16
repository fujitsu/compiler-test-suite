integer,parameter::a=1
integer,parameter::b=1
integer,parameter::c=maskr(a+b,b)

if(c.ne. 3)print*,"100"
print*,"PASS"
end

