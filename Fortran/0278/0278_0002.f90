integer*4,parameter::a=12345678
integer,parameter::c=LEADZ(a)
integer,parameter::d=TRAILZ(a)

if(c.ne. 8)print*,"100"
if(d.ne. 1)print*,"101"
print*,"PASS"
end
