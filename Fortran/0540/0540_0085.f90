module m123456789
        type t0
         integer::x=12
        end type
        type,extends(t0):: t1
          integer::a=10
        end type
        class(t0),allocatable:: obj3
        class(t1),allocatable:: obj
end 
module d
contains
subroutine s1(d1)
use m123456789
class(t1),allocatable:: d1
end subroutine
end
module m2
contains
 subroutine   sub
use d
use m123456789
        class(t1),allocatable:: obj2
        select type(obj3)
          type is(t1)
           print*,"101"
          type is(t0)
           if(extends_type_of(obj,obj3).neqv..true.)then
             print*,"123"
           end if
           if(extends_type_of(obj,obj2).neqv..true.)then
             print*,"143"
           end if
        end select
end
end
use m123456789
use m2
 call         sub
        print*,"pass"
       end
