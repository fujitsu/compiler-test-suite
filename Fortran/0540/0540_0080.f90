        type t0
         integer::x=12
        end type
        type,extends(t0):: t1
          integer::a=10
        end type
        class(t0),pointer:: obj
        class(t0),pointer:: obj2
        class(t0),pointer:: obj3
        allocate(t1::obj2)
        allocate(obj3)
        obj=>obj2
        allocate(t1::obj)
        select type(X=>obj)
          type is(t0)
           print*,"101"
          type is(t1)
           if(extends_type_of(obj,obj3).neqv..true.)then
             print*,"102"
           end if
           if(extends_type_of(obj,obj2).neqv..true.)then
             print*,"103"
           end if
           if(extends_type_of(X,obj3).neqv..true.)then
             print*,"123"
           end if
           if(extends_type_of(X,obj2).neqv..true.)then
             print*,"143"
           end if
        end select
        print*,"pass"
       end
