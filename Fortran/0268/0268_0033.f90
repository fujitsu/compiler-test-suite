type tp0
integer::x
end type tp0
type tp1
type(tp0) :: tt(2)
end type tp1
type(tp1),target :: t2 = tp1((/tp0(7),tp0(8)/))
type(tp1),pointer::ptr
data ptr /t2/

if(associated(ptr).neqv..true.)print*,"102",associated(ptr)
if(associated(ptr))then
if(ptr%tt(1)%x.ne.7)print*,"101"
endif
print*,"PASS"
end
