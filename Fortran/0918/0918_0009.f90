integer,target::t1=20
integer,pointer::p1
type ty
integer,pointer::ptr=>t1
integer,pointer::ptr2
end type
type(ty)::obj
  data p1 /t1/
  common /abc/ p1
print*,"pass"
end

