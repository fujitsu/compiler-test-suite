 module m1
   integer,target::t =20
   type b0
     integer,pointer::ptr
     integer::x1=1
   end type
   type,extends( b0) :: b1
     integer::y1=2
   end type
end
module m2
   use m1,tb0=>b0, tb1=>b1
   type b0
     integer,pointer::ptr2
     integer::y1= 3
   end type
   type,extends(tb1)::e1
     type(b0)::e11 = b0(t,10)
     type(tb1) :: b1
     integer::e12 = 4
   end type
    type(e1),target,save :: trg3
    type(tb1),target,save :: trg4
    type ty2
         class(tb0),pointer::ptr!=>trg
         class(tb0),pointer::ptr2!=>trg
    end type
    type(ty2)::obj3 = ty2(trg4,trg3)
  contains 
 subroutine sub()
 select type(A=>obj3%ptr)
  type is(tb1)
  if(A%x1.ne.1)print*,"101"
  class default
   print*,"322"
  end select 
end 
end module 
use m2
 call sub()
 print*,"sngg260t : pass"
 end

