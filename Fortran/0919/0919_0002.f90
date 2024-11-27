subroutine sub
complex,target::t2 =(2,3)
type ty
SEQUENCE
real,pointer::ptr
end type
type(ty)::obj
common /com/ obj
data obj%ptr /t2%re/
if(obj%ptr.ne.2)print*,"101"
print*,"PASS"
end
call sub
end
