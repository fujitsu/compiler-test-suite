Module m1
 integer,target::t1 =30
 type ty
      procedure(),pointer,nopass :: ptr1=>s1
      procedure(s1),pointer,nopass :: ptr2=>s1
      integer,pointer::ptr=>t1
 end type
contains
   subroutine s1(d)
   integer :: d
   d=d+1
  end subroutine
end module

module m2
 integer,target::t2 =40
type ty2
      procedure(),pointer,nopass :: ptr1=>s2
      procedure(s2),pointer,nopass :: ptr2=>s2
      integer,pointer::ptr=>t2
 end type
contains 
  subroutine s2(d)
   integer :: d
   d=d+2
  end subroutine
end 
use m1,s2=>s1, t2=>t1
use m2,s1=>s2, t1=>t2
  integer::jj =4
  type(ty)::obj
  type(ty2)::obj2
  call obj%ptr1(jj)
  call obj%ptr2(jj)
  call obj2%ptr1(jj)
  call obj2%ptr2(jj)
  call s2(jj)
  call s1(jj)
  if(obj%ptr.ne.30)print*,"101"
  if(obj2%ptr.ne.40)print*,"102"
  if(jj .ne. 13)print*,"122",jj
  print*,"Pass"
end
