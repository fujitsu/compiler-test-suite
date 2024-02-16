integer,parameter::a=21
integer,parameter::b=22
logical,parameter::c=bge(a,b)
logical,parameter::d=bgt(a,b)
logical,parameter::e=ble(a,b)
logical,parameter::f=blt(a,b)

if(c.neqv. .false.)print*,"100"
if(d.neqv. .false.)print*,"101"
if(e.neqv. .true.)print*,"102"
if(f.neqv. .true.)print*,"103"
print*,"PASS"
end
