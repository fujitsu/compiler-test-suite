real,parameter::a=1.3
real,parameter::b=1.4
integer,parameter::c=maskl(int(a),int(b))
integer,parameter::d=maskr(int(a),int(b))

if(c.ne. -128)print*,"100"
if(d.ne. 1)print*,"101"
print*,"PASS"
end

