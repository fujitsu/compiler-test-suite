Module m1
 integer,target::t1 =30
 type ty
      procedure(),pointer,nopass :: ptr1=>s1
      procedure(s1),pointer,nopass :: ptr2=>s1
      integer,pointer::ptr3=>t1
 end type
contains
   subroutine s1(d)
   integer :: d
   d=d+1
  end subroutine
end module

module m2
use m1,s2=>s1,t2=>t1
end
use m2
  integer::jj =4
  type(ty)::obj
  call obj%ptr1(jj)
  call obj%ptr2(jj)
  if(obj%ptr3.ne.30)print*,"101"
  if(jj .ne. 6)print*,"122"
  print*,"Pass"
end
