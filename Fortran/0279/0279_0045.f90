type ty1
integer::a
end type  
type ty(l)
 integer,kind :: l
 integer :: arr(l)
end type
type(ty1),parameter::obj1=ty1(5)
type(ty(obj1%a)),parameter:: obj=ty(5)(2)
integer,parameter::a=storage_size(obj)
if(a .ne. storage_size(obj))print*,"100"
print*,"PASS"
end

