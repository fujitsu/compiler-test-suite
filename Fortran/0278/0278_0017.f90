integer*2,parameter::a=122
integer*2,parameter::b=12
integer,parameter::c=TRAILZ(a+b)

if(c.ne. 1)print*,"100"
print*,"PASS"
end
