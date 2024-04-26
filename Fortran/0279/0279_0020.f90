integer,parameter::a=kind(poppar(-1_1))
integer,parameter::b=kind(poppar(-1_2))
integer,parameter::c=kind(poppar(-1_4))
integer,parameter::d=kind(poppar(-1_8))
if(a .ne. kind(poppar(-1_1)))print*,"100"
if(b .ne. kind(poppar(-1_2)))print*,"101"
if(c .ne. kind(poppar(-1_4)))print*,"102"
if(d .ne. kind(poppar(-1_8)))print*,"103"
print*,"PASS"
end
