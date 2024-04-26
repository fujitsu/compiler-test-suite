integer,pointer :: p1
character, pointer :: p2
real,pointer :: p3
complex,pointer :: p4
logical,pointer :: p5
integer,parameter::a=storage_size(p1)
integer,parameter::b=storage_size(p2)
integer,parameter::c=storage_size(p3)
integer,parameter::d=storage_size(p4)
integer,parameter::e=storage_size(p5)
if(a .ne. storage_size(p1))print*,"100"
if(b .ne. storage_size(p2))print*,"101"
if(c .ne. storage_size(p3))print*,"102"
if(d .ne. storage_size(p4))print*,"103"
if(e .ne. storage_size(p5))print*,"104"
print*,"PASS"
end

