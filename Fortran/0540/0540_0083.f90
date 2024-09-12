module m1
        type t0
         integer::x=12
        end type
        type,extends(t0):: t1
          integer::a=10
        end type
end 
module d
contains
subroutine s1(d1)
use m1
class(t1),allocatable:: d1
end subroutine
end
module m2
contains
 subroutine   sub(obj)
use d
use m1
        class(t1),allocatable:: obj
        class(t1),allocatable:: obj2
        class(t0),allocatable:: obj3
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
use m1
use m2
        class(t1),allocatable:: obj
 call         sub(obj)
        print*,"pass"
       end
