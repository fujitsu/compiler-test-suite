integer,parameter::a=poppar(-1_1)
integer,parameter::b=poppar(-1_2)
integer,parameter::c=poppar(-1_4)
integer,parameter::d=poppar(-1_8)
if(a .ne. 0)print*,"100"
if(b .ne. 0)print*,"101"
if(c .ne. 0)print*,"102"
if(d .ne. 0)print*,"103"
print*,"PASS"
end
