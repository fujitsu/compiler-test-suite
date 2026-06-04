 module m1
   integer,target::t =20
   type c
     integer,pointer::ptr=>t
   end type
end
subroutine s1
use m1
  type(c),allocatable::a
  allocate(a)
  if (.not.associated(a%ptr,t)) print *,202
  if (a%ptr/=20) print *,2929
end 
use m1
 call s1()
 print*,"sngg264t : pass"
 end

