        type t0
         integer::x=12
        end type
        type,extends(t0):: t1
          integer::a=10
        end type
        class(t0),pointer:: obj
        class(t0),pointer:: obj2
        allocate(t1::obj2)
        obj=>obj2
        allocate(t1::obj)
        select type(X=>obj)
          type is(t0)
           print*,"101"
          type is(t1)
           if(same_type_as(obj,obj2).neqv..true.)then
             print*,"102"
           end if
        end select
        print*,"PASS"
       end
