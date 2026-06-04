 module m1
   integer,target::v =20
   type c
     integer,pointer::p
   end type
   type b
     integer::y1=1
     type(c)::e(3) = [c(null()),c(v),c(null())]
   end type
    type(b),target,save :: w   
    type t
         class(b),pointer::z
    end type
    type,extends(t)::te
         integer::zz
    end type
  contains 
 subroutine sub()
    type(t)::obj = t(w   )
   class(t),allocatable::y1
   class(t),allocatable::y2
   class(b),allocatable::z1,z2
 if (.not.associated(obj%z)) print *,2928
 if (.not.associated(obj%z%e(2)%p,v)) print *,2929
   allocate(te::y1)
   allocate(y2,mold=y1)
  k=0
  select type(y2)
    type is(te)
      k=1
      !!!if (.not.associated(y2%z)) print *,1001
   end select
   if (k/=1) print *,72728
   allocate(z1)
   allocate(z2,mold=z1)
   if (z2%y1/=1) print *,2829
   if (z2%e(2)%p/=20) print *,2020
end 
end module 
use m1
 call sub()
 print*,"sngg284t : pass"
 end

