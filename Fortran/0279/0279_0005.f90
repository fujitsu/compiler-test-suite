integer,parameter::a=122
integer,parameter::b=12
integer,parameter::c=popcnt(a+b)

if(c.ne. 3)print*,"100"
print*,"PASS"
end

