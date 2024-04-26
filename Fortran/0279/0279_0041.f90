type sum1
integer::a=storage_size(2)
integer::b=kind(storage_size(2,4))
end type sum1
type(sum1)::obj
integer::m1

if(obj%a .ne.bit_size(m1))print*,"100"
if(obj%b .ne.4)print*,"101"
print*,"PASS"
end
