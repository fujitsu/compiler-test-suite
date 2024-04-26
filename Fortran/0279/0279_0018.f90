integer,parameter::a=122
integer,parameter::b=12
integer,parameter::c=poppar(a+b)

if(c.ne. 1)print*,"100"
print*,"PASS"
end

