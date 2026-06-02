 module m1
   integer,target::v =20
   type c
     integer,pointer::p
   end type
   type b
     integer::y1=1
     type(c)::e(3) = [c(null()),c(v),c(null())]
   end type
    type t
         class(b),pointer::z
    end type
    type,extends(t)::te
         integer::zz
    end type
  contains 
 subroutine sub()
   class(b),allocatable::z1,z2
   allocate(z1)
   if (z1%y1/=1) print *,1829
   if (z1%e(2)%p/=20) print *,1020
   allocate(z2,mold=z1)
   if (z2%y1/=1) print *,2829
   if (z2%e(2)%p/=20) print *,2020
end 
end module 
use m1
 call sub()
 print*,"sngg285t : pass"
 end

