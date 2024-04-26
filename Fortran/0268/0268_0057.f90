type ty
 integer::x
 integer::y
end type
type ty2

type(ty),pointer::ptr
type(ty)::tyobj
 integer::z
end type

type(ty)::objty
type(ty),parameter::obj =ty(1,2)
type(ty2)::objty2
data objty,objty2%ptr ,objty2%z, objty2%tyobj  /obj ,NULL(), 10,obj/
if(objty%x.ne.1)print*,"101"
if(objty%y.ne.2)print*,"102"
if(associated(objty2%ptr).neqv..false.)print*,"103",associated(objty2%ptr)
if(objty2%z.ne.10)print*,"104"
if(objty2%tyobj%x.ne.1)print*,"105"
if(objty2%tyobj%y.ne.2)print*,"106"
Print*,"PASS"
end
