 module m1
   integer,target::t =20
   type b0
     integer::x1=1
   end type
   type,extends( b0) :: b1
     integer::y1=2
   end type
   type c0
     integer,pointer::ptr2
   end type
   type,extends(b1)::e1
     type(c0)::e11 = c0(t)
   end type
    type(e1),target,save :: trg3
    type ty2
         class(b0),pointer::ptr2
    end type
    type(ty2)::obj3 = ty2(trg3)
  contains 
 subroutine sub()
 select type(A=>obj3%ptr2)
  type is(e1)
  if(A%x1.ne.1)print*,"101"
  class default
   print*,"322"
  end select 
end 
end module 
use m1
 call sub()
 print*,"sngg263t : pass"
 end

