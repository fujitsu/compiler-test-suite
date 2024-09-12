integer,target,save  :: tar1=2
integer,target,save  :: tar2=9
type ty
 integer,pointer :: ptr1=>tar2
 integer::x=10
end type
type ty1
  type(ty) :: obj = ty(x=10,ptr1 =tar1)
  type(ty) :: obj2 = ty(x=10)
 end type
 type (ty1)::obj1
 type (ty)::obj2
 if(obj2%ptr1.ne.9)print*,"201"
 if(obj1%obj2%ptr1.ne.9)print*,"202"
 if(associated(obj1%obj%ptr1) .eqv. .false.)print*,"101"
 if(obj1%obj%ptr1 .ne. 2) print*,"102"
 if(obj1%obj%x .ne. 10) print*,"103"
 print*,"pass"
 end

