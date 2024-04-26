integer,parameter::a=storage_size("abcd"(1:2))
if(a .ne. storage_size("abcd"(1:2)))print*,"100"
print*,"PASS"
end

