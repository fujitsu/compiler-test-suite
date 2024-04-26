real,parameter::a=1234.3
integer*8,parameter::b=123
integer,parameter::c=LEADZ(INT(a,2))
integer,parameter::d=LEADZ(IBSET(127_4,2))
integer,parameter::e=LEADZ(HUGE(b))
integer,parameter::f=LEADZ(IBSET(HUGE(b),1))
if(c.ne. 5)print*,"100"
if(d.ne. 25)print*,"101"
if(e.ne. 1)print*,"102"
if(f.ne. 1)print*,"103"
print*,"PASS"
end
