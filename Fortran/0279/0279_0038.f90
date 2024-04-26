type ty
integer,pointer::ptr(:,:)
real,pointer::rptr(:,:,:)
end type
type(ty)::obj
integer,parameter::a=storage_size(obj)
if(a .ne. storage_size(obj))print*,"100"
print*,"PASS"
end

