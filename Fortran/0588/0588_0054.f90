Module m
integer,target::t1=12
contains
 function fun( A, B, C ) 
 INTEGER A, B,C,fun,E1

 ENTRY E1( A, B, C ) 
 E1=A+B+C
 return
 end function
end module

use m
type ty
   procedure(integer),pointer,nopass:: ptr1
end type
type ty2
   integer,pointer:: ptr2
end type

type ty1
  type(ty)::obj1
  type(ty2)::obj3(3)
  type(ty)::obj(3)
end type

type ty3
   type(ty1)::obj2 = ty1(ty(E1),[ty2(t1),ty2(t1),ty2(NULL())],[ty(E1),ty(E1),ty(NULL())])
end type
type(ty3)::obj5 =ty3(ty1(ty(E1),[ty2(t1),ty2(t1),ty2(NULL())],[ty(E1),ty(E1),ty(NULL())]))
type(ty3)::obj6
type(ty3)::obj7 = ty3(ty1(ty(E1),[ty2(t1),ty2(t1),ty2(NULL())],[ty(E1),ty(E1),ty(NULL())])) 
if(associated(obj5%obj2%obj3(1)%ptr2) .eqv. .false.)print*,"101"
if(associated(obj5%obj2%obj3(2)%ptr2) .eqv. .false.)print*,"102"
if(associated(obj5%obj2%obj3(3)%ptr2) .eqv. .true.)print*,"103"
if(associated(obj5%obj2%obj(1)%ptr1) .eqv. .false.)print*,"104"
if(associated(obj5%obj2%obj(2)%ptr1) .eqv. .false.)print*,"105"
if(associated(obj5%obj2%obj(3)%ptr1) .eqv. .true.)print*,"106"
if(obj5%obj2%obj3(2)%ptr2.ne.12)print*,"205"
if(obj5%obj2%obj(2)%ptr1(1,2,3).ne.6)print*,"206"
if(obj5%obj2%obj(2)%ptr1(9,2,3).ne.14)print*,"207"
if(associated(obj6%obj2%obj3(1)%ptr2) .eqv. .false.)print*,"101"
if(associated(obj6%obj2%obj3(2)%ptr2) .eqv. .false.)print*,"102"
if(associated(obj6%obj2%obj3(3)%ptr2) .eqv. .true.)print*,"103"
if(associated(obj6%obj2%obj(1)%ptr1) .eqv. .false.)print*,"104"
if(associated(obj6%obj2%obj(2)%ptr1) .eqv. .false.)print*,"105"
if(associated(obj6%obj2%obj(3)%ptr1) .eqv. .true.)print*,"106"
if(obj6%obj2%obj3(2)%ptr2.ne.12)print*,"205"
if(obj6%obj2%obj(2)%ptr1(1,2,3).ne.6)print*,"206"
if(obj6%obj2%obj(2)%ptr1(9,2,3).ne.14)print*,"207"
if(associated(obj7%obj2%obj3(1)%ptr2) .eqv. .false.)print*,"101"
if(associated(obj7%obj2%obj3(2)%ptr2) .eqv. .false.)print*,"102"
if(associated(obj7%obj2%obj3(3)%ptr2) .eqv. .true.)print*,"103"
if(associated(obj7%obj2%obj(1)%ptr1) .eqv. .false.)print*,"104"
if(associated(obj7%obj2%obj(2)%ptr1) .eqv. .false.)print*,"105"
if(associated(obj7%obj2%obj(3)%ptr1) .eqv. .true.)print*,"106"
if(obj7%obj2%obj3(2)%ptr2.ne.12)print*,"205"
if(obj7%obj2%obj(2)%ptr1(1,2,3).ne.6)print*,"206"
if(obj7%obj2%obj(2)%ptr1(9,2,3).ne.14)print*,"207"

print*,"pass"
end
