type ty
complex,pointer ::act(:)
end type ty
type (ty)::obj(3)
allocate(obj(2)%act(2))
obj(2)%act=10
call sub(obj(2)%act)
print*,"PASS"
contains
subroutine sub(dmy)
complex,asynchronous :: dmy(2)
if(any(dmy /=10))print*,101

end subroutine
end

