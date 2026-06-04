 module m1
   integer,target::t =20
   type c0
     integer::p
   end type
   type b0
     integer::y1=1
     type(c0)::e11 = c0(1)
   end type
    type(b0),target,save :: w   
    type ty2
         class(b0),pointer::z
    end type
    type(ty2)::obj3 = ty2(w   )
  contains 
 subroutine sub()
 if (.not.associated(obj3%z)) print *,2928
end 
end module 
use m1
 call sub()
 print*,"sngg266t : pass"
 end

