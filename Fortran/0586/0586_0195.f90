module m
contains
  subroutine sub()
   print*,"PASS"
  end subroutine

  function fun()
   integer::fun
  fun =20
  end function
end
use m
interface
 subroutine sub1()
 end subroutine

 function fun1()
  integer::fun1
 end function
end interface
procedure(fun),pointer::ptr1=>NULL()
procedure(sub),pointer::ptr2=>NULL()
procedure(fun1),pointer::ptr3=>NULL()
procedure(sub1),pointer::ptr4=>NULL()
procedure(fun),pointer::ptr5=>fun1
procedure(sub),pointer::ptr6=>sub1
procedure(fun1),pointer::ptr7=>fun
procedure(sub1),pointer::ptr8=>sub

type ty
procedure(fun),pointer,NOPASS::ptr1=>NULL()
procedure(sub),pointer,NOPASS::ptr2=>NULL()
procedure(fun1),pointer,NOPASS::ptr3=>NULL()
procedure(sub1),pointer,NOPASS::ptr4=>NULL()
procedure(fun),pointer,NOPASS::ptr5=>fun1
procedure(sub),pointer,NOPASS::ptr6=>sub1
procedure(fun1),pointer,NOPASS::ptr7=>fun
procedure(sub1),pointer,NOPASS::ptr8=>sub
end type
type(ty)::obj

if(associated(ptr1).neqv..false.)print*,"101"
if(associated(ptr2).neqv..false.)print*,"102"
if(associated(ptr3).neqv..false.)print*,"103"
if(associated(ptr4).neqv..false.)print*,"104"
if(associated(ptr5).neqv..true.)print*,"105"
if(associated(ptr6).neqv..true.)print*,"106"
if(associated(ptr7).neqv..true.)print*,"107"
if(associated(ptr8).neqv..true.)print*,"108"

if(associated(obj%ptr1).neqv..false.)print*,"101"
if(associated(obj%ptr2).neqv..false.)print*,"102"
if(associated(obj%ptr3).neqv..false.)print*,"103"
if(associated(obj%ptr4).neqv..false.)print*,"104"
if(associated(obj%ptr5).neqv..true.)print*,"105"
if(associated(obj%ptr6).neqv..true.)print*,"106"
if(associated(obj%ptr7).neqv..true.)print*,"107"
if(associated(obj%ptr8).neqv..true.)print*,"108"

call ptr6()
call ptr8()
call obj%ptr6()
call obj%ptr8()
if(ptr5().ne.20)print*,"101"
if(ptr7().ne.20)print*,"101"
if(obj%ptr5().ne.20)print*,"101"
if(obj%ptr7().ne.20)print*,"101"
print*,"PASS"
end 
  subroutine sub1()
   print*,"PASS"
  end subroutine

  function fun1()
   integer::fun1
   fun1 =20
  end function

