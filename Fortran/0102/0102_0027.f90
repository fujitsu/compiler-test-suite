integer,parameter::a=KIND(BGE(4,5))
integer,parameter::b=KIND(BGT(4,5))
integer,parameter::c=KIND(BLE(4,5))
integer,parameter::d=KIND(BLT(4,5))
logical::l
if(a .ne. kind(l))print*,"100"
if(b .ne. kind(l))print*,"101"
if(c .ne. kind(l))print*,"102"
if(d .ne. kind(l))print*,"103"
print*,"PASS"
end
