 module m1
 type ty
 integer :: ii 
 contains
         procedure,nopass::fun=>parent
 end type

 type,extends(ty) :: ty1
 integer :: ii1
 contains
         procedure,nopass::fun=>child
 end type
 integer,target::trg
 integer,target::trg1
 contains
         function parent()
         integer,pointer::parent
         parent=>trg
         end function

         function child()
         integer,pointer::child
         child=>trg1
         end function

 end module

 use m1
 type(ty)::obj
 type(ty1)::obj1
 obj%ii=1
 obj1%ii1=2
 obj%fun()=100
 if (trg /= 100)print *,101
 if (obj%ii /= 1)print *,102
 obj1%fun()=999
 if (trg1 /= 999)print *,103
 if (obj1%ii1 /= 2)print *,104
 print *,"Pass"
 end
