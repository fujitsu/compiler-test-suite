Module m1
contains
   subroutine s1(d)
   integer :: d
   d=d+1
  end subroutine
end module

module m2
contains
   subroutine s2(d)
   integer :: d
   d=d+5
  end subroutine
end
module m3
use m2
use m1
 type ty
      procedure(),pointer,nopass :: ptr1=>s1
      procedure(s1),pointer,nopass :: ptr2=>s1
      procedure(s1),pointer,nopass :: ptr3=>s2
 end type
  type(ty)::obj
end
use m3
  integer::jj =4
  call obj%ptr1(jj)
  call obj%ptr2(jj)
  call obj%ptr3(jj)
  if(jj .ne. 11)print*,"122"
  print*,"Pass"
end
