real,parameter::a=3267
integer*8,parameter::b=123
integer,parameter::c=TRAILZ(INT(a,2))
integer,parameter::d=TRAILZ(IBSET(64,2))
integer,parameter::e=TRAILZ(HUGE(b))
integer,parameter::f=TRAILZ(IBSET(HUGE(b),0))
if(c.ne. 0)print*,"100"
if(d.ne. 2)print*,"101"
if(e.ne. 0)print*,"102"
if(f.ne. 0)print*,"103"
print*,"PASS"
end
