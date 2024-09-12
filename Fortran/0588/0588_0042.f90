Module m
integer,target::t1=12
contains
 function fun( A, B, C ) 
 INTEGER A, B,C
 ENTRY E1( A, B, C ) 
 E1=A+B+C
 fun = A+B+C
 end function
end module

use m
type ty
   procedure(),pointer,nopass:: ptr1
end type

type tty
   integer,pointer:: ptr3
end type

type,extends(tty)::ty2
   integer,pointer:: ptr2
   type(ty)::nobj(2)
end type

type ty1
  type(ty)::obj1
  type(ty2)::obj3(3)
  type(ty)::obj(3)
end type

type ty3
   type(ty1)::obj2
end type
type(ty3)::obj6 = ty3(ty1(ty(E1),[ty2(tty(t1),t1,[ty(NULL()),ty(fun)]),ty2(t1,t1,&
                  &[ty(NULL()),ty(fun)]),ty2(t1,NULL(),[ty(NULL()),ty(fun)])],[ty(E1),ty(fun),ty(NULL())]))
type(ty3)::obj5
type(ty3)::obj7 = ty3(ty1(ty(E1),[ty2(tty(t1),t1,[ty(NULL()),ty(fun)]),ty2(t1,t1,&
                  &[ty(NULL()),ty(fun)]),ty2(t1,NULL(),[ty(NULL()),ty(fun)])],[ty(E1),ty(fun),ty(NULL())])) 
data obj5 /ty3(ty1(ty(E1),[ty2(tty(t1),t1,[ty(NULL()),ty(fun)]),ty2(t1,t1,&
           &[ty(NULL()),ty(fun)]),ty2(t1,NULL(),[ty(NULL()),ty(fun)])],[ty(E1),ty(fun),ty(NULL())]))/
if(associated(obj5%obj2%obj3(1)%ptr2) .eqv. .false.)print*,"101"
if(associated(obj5%obj2%obj3(2)%ptr2) .eqv. .false.)print*,"102"
if(associated(obj5%obj2%obj3(1)%nobj(1)%ptr1) .neqv. .false.)print*,"501"
if(associated(obj5%obj2%obj3(2)%nobj(2)%ptr1) .neqv. .true.)print*,"502"
if(associated(obj5%obj2%obj3(3)%nobj(1)%ptr1) .neqv. .false.)print*,"503"
if(associated(obj5%obj2%obj3(3)%ptr2) .eqv. .true.)print*,"103"
if(associated(obj5%obj2%obj(1)%ptr1) .eqv. .false.)print*,"104"
if(associated(obj5%obj2%obj(2)%ptr1) .eqv. .false.)print*,"105"
if(associated(obj5%obj2%obj(3)%ptr1) .eqv. .true.)print*,"106"
if(obj5%obj2%obj3(2)%ptr2.ne.12)print*,"205"
if(obj5%obj2%obj(2)%ptr1(1,2,3).ne.6)print*,"226",obj5%obj2%obj(2)%ptr1(1,2,3)
if(obj5%obj2%obj(2)%ptr1(9,2,3).ne.14)print*,"207"
if(associated(obj6%obj2%obj3(1)%ptr2) .eqv. .false.)print*,"101"
if(associated(obj6%obj2%obj3(2)%ptr2) .eqv. .false.)print*,"102"
if(associated(obj6%obj2%obj3(3)%ptr2) .eqv. .true.)print*,"103"
if(associated(obj6%obj2%obj(1)%ptr1) .eqv. .false.)print*,"104"
if(associated(obj6%obj2%obj(2)%ptr1) .eqv. .false.)print*,"105"
if(associated(obj6%obj2%obj(3)%ptr1) .eqv. .true.)print*,"106"
if(obj6%obj2%obj3(2)%ptr2.ne.12)print*,"205"
if(obj6%obj2%obj(2)%ptr1(1,2,3).ne.6)print*,"226"
if(obj6%obj2%obj(2)%ptr1(9,2,3).ne.14)print*,"207"
if(associated(obj7%obj2%obj3(1)%ptr2) .eqv. .false.)print*,"101"
if(associated(obj7%obj2%obj3(2)%ptr2) .eqv. .false.)print*,"102"
if(associated(obj7%obj2%obj3(3)%ptr2) .eqv. .true.)print*,"103"
if(associated(obj7%obj2%obj(1)%ptr1) .eqv. .false.)print*,"104"
if(associated(obj7%obj2%obj(2)%ptr1) .eqv. .false.)print*,"105"
if(associated(obj7%obj2%obj(3)%ptr1) .eqv. .true.)print*,"106"
if(obj7%obj2%obj3(2)%ptr2.ne.12)print*,"205"
if(obj7%obj2%obj(2)%ptr1(1,2,3).ne.6)print*,"216", obj7%obj2%obj(2)%ptr1(1,2,3)
if(obj7%obj2%obj(2)%ptr1(9,2,3).ne.14)print*,"207"
print*,"pass"
end
