integer*8,target::t1(5)=1
type ty
integer::a
integer*8,pointer::b(:)=>t1
end type
type(ty)::obj
integer,parameter::a = storage_size(obj)
if(a .ne. storage_size(obj))print*,"100"
print*,"PASS"
end

