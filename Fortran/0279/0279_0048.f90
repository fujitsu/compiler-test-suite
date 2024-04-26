integer*2,target::t1(5)=1
integer*2,pointer::b(:)=>t1
integer,parameter::a = storage_size(b)
if(a .ne. storage_size(b))print*,"100"
print*,"PASS"
end

