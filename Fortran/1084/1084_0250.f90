        type t0
         integer::x=12
        end type
        type,extends(t0):: t1
          integer::a=10
        end type
        class(t0),allocatable:: obj
        type(t0):: obj2
        type(t1):: obj3
        allocate(t1::obj)
        select type(X=>obj)
          type is(t0)
           print*,"101"
          type is(t1)
           if(extends_type_of(X,obj2).neqv..true.)then
             print*,"103"
           end if
           if(extends_type_of(obj3,obj2).neqv..true.)then
             print*,"109"
           end if
           obj = obj2
           if(extends_type_of(X,obj3).neqv..true.)then
             print*,"113"
           end if
        end select
        print*,"PASS"
       end
