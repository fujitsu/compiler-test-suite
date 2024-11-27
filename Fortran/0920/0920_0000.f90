integer,target::t1
type ty
sequence
integer,pointer::p1
end type
type(ty)::obj
  data obj /ty(t1)/
  common /abc/ obj
print*,"pass"
end

