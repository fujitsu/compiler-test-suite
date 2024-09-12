type ty
 integer::a =10
 type(ty),pointer::next=>NULL()
end type 

type(ty)::obj
type(ty),target,save::obj2

if(associated(obj%next).neqv..false.)print*,"101"
obj%a =20
obj%next=>obj2
if(associated(obj%next).neqv..true.)print*,"102"
print*,"PASS"
end

