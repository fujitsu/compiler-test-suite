integer*2,parameter::a=122
integer*2,parameter::b=12
integer,parameter::c=LEADZ(a+b)

if(c.ne. 8)print*,"100"
print*,"PASS"
end
