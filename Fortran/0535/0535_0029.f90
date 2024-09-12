type t
real::aa
end type
class(t),pointer::tt,ttt
allocate(tt)
ttt=>tt
nullify(tt,ttt)
if(associated(tt,ttt)) then
print *,'err1'
end if
block
type t
real::aa
end type
class(t),pointer::tt,ttt
allocate(tt)
ttt=>tt
nullify(tt,ttt)
if(associated(tt,ttt)) then
print *,'err2'
end if
end block
print *,'pass'
end
