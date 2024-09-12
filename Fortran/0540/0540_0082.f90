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
 subroutine   sub(obj,obj2,obj3)
use d
use m1
        class(t0),pointer:: obj
        class(t0),pointer:: obj2
        class(t0),pointer:: obj3
        select type(obj)
          type is(t0)
           print*,"101"
          type is(t1)
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
        class(t0),pointer:: obj
        class(t0),pointer:: obj2
        class(t0),pointer:: obj3
        allocate(t1::obj2)
        allocate(obj3)
        obj=>obj2
 call         sub(obj,obj2,obj3)
        print*,"pass"
       end
