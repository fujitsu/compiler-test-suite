module m2
 type ty
      procedure(),pointer,nopass :: ptr1=>NULL()
      procedure(s1),pointer,nopass :: ptr2=>NULL()
 end type
  type(ty)::obj
contains
   subroutine s1(d)
   integer :: d
   d=d+1
  end subroutine
end module

Module m1
use m2,only:s1
 type ty
      procedure(),pointer,nopass :: ptr1=>s1
      procedure(s1),pointer,nopass :: ptr2=>s1
 end type
end module

use m1
  integer::jj =4
  type(ty)::obj
  call obj%ptr1(jj)
  call obj%ptr2(jj)
  if(jj .ne. 6)print*,"122"
  print*,"Pass"
end