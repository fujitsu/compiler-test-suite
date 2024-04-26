integer,parameter::a=storage_size(1.0)
integer,parameter::b=storage_size(1.d0)
if(a .ne. storage_size(1.0))print*,"100"
if(b .ne. storage_size(1.d0))print*,"101"
print*,"PASS"
end
