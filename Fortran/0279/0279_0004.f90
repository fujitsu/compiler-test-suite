real,parameter::a=1234.3
integer,parameter::c=popcnt(int(a))
integer,parameter::d=poppar(int(a))

if(c.ne. 5)print*,"100"
if(d.ne. 1)print*,"101"
print*,"PASS"
end

