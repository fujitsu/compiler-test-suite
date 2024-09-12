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
type(ty),target::taobjty
type(ty2),parameter::obj =ty2(NULL(),ty(1,2),12)
type(ty2)::objty2
type(ty2)::objty3
taobjty%x =30
taobjty%y =40

data objty, objty2%ptr, objty2%z, objty2%tyobj, objty3 /obj%tyobj ,taobjty, 10,obj%tyobj,ty2(NULL(),obj%tyobj,15)/
if(objty%x.ne.1)print*,"101"
if(objty%y.ne.2)print*,"102"
if(associated(objty2%ptr).neqv..true.)print*,"103",associated(objty2%ptr)
if(objty2%z.ne.10)print*,"104"
if(objty2%tyobj%x.ne.1)print*,"105"
if(objty2%tyobj%y.ne.2)print*,"106"
if(associated(objty3%ptr).neqv..false.)print*,"107",associated(objty2%ptr)
if(objty3%z.ne.15)print*,"108"
Print*,"pass"
end

