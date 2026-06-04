 module m1
   integer,target::v =20
   type c
     integer,pointer::p
   end type
   type b
     integer::y1=1
     type(c)::e = c(v)
   end type
    type(b),target,save :: w   
    type t
         class(b),pointer::z
    end type
  contains 
 subroutine sub()
    type(t)::obj = t(w   )
 if (.not.associated(obj%z)) print *,2928
 if (.not.associated(obj%z%e%p,v)) print *,2929
end 
end module 
use m1
 call sub()
 print*,"sngg269t : pass"
 end

