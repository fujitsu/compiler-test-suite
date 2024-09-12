Module m1
 type ty
      procedure(),pointer,nopass :: ptr1=>s1
      procedure(s1),pointer,nopass :: ptr2=>s1
      procedure(integer),pointer,nopass :: ptr3=>fun
      procedure(fun),pointer,nopass :: ptr4=>fun
 end type
contains
 subroutine s1(d)
   integer :: d
   d=d+1
 end subroutine
 function fun(d)
   integer::fun
   integer::d
   fun =d+1
 end function
end module

use m1
  integer::jj =4
  type(ty)::obj
  call obj%ptr1(jj)
  call obj%ptr2(jj)
  if(obj%ptr3(jj).ne.7)print*,"101",obj%ptr3(jj)
  if(obj%ptr4(jj).ne.7)print*,"103",obj%ptr4(jj)
  if(jj .ne. 6)print*,"122"
  print*,"Pass"
end
