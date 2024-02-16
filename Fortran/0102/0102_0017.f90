real,parameter::a=123.056
real,parameter::b=123.065
logical,parameter::c=bge(int(a),int(b))
logical,parameter::d=bgt(int(a),int(b))
logical,parameter::e=ble(int(a),int(b))
logical,parameter::f=blt(int(a),int(b))
if (c.neqv. .true.)print*,"100"
if (d.neqv. .false.)print*,"101"
if (e.neqv. .true.)print*,"102"
if (f.neqv. .false.)print*,"103"
print*,"PASS"
end
