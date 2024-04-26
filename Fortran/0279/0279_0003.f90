integer*4,parameter::a=12345678
integer,parameter::c=popcnt(a)
integer,parameter::d=poppar(a)

if(c.ne. 12)print*,"100"
if(d.ne. 0)print*,"101"
print*,"PASS"
end

