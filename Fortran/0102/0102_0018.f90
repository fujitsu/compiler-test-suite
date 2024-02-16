integer,parameter::a=123
integer,parameter::b=b'10101010'
logical,parameter::c=bge(a+b,b+a)
logical,parameter::d=bgt(a+b,b+a)
logical,parameter::e=ble(a+b,b+a)
logical,parameter::f=blt(a+b,b+a)
if (c.neqv. .true.)print*,"100"
if (d.neqv. .false.)print*,"101"
if (e.neqv. .true.)print*,"102"
if (f.neqv. .false.)print*,"103"
print*,"PASS"
end
