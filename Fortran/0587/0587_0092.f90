module n
 contains
 subroutine sub()
   print*,"pass"
 end subroutine
end 


Module m
use n
 type ty
    procedure(sub),nopass,pointer:: ptr1=>sub
 end type
 type ty1
    procedure(sub),nopass,pointer:: ptr1=>sub
 end type
 type(ty)::obj
 type(ty1)::obj2
end module
module m2

use m , only :obj
 type ty1
   procedure(sub2),nopass,pointer:: ptr1=>sub2
 end type
type(ty1)::obj5
contains
 subroutine sub2()
   print*,"PASS"
 end subroutine

end
use m2
use m , only :obj2
type(ty1)::obj6
call obj%ptr1()
call obj2%ptr1()
call obj5%ptr1()
call obj6%ptr1()
end
