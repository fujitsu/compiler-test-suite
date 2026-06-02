        type t0
         integer::x=12
        end type
        type,extends(t0):: t1
          integer::a=10
        end type
        class(*),pointer:: obj
        class(*),pointer:: obj2
        class(*),pointer:: obj3
        class(*),allocatable:: obj6
        type(t1):: obj11
        type(t1):: obj12
        allocate(t1::obj2)
        allocate(t0::obj3)
        obj=>obj2
         
        allocate(t1::obj)
        select type(X=>obj)
          type is(t0)
           print*,"101"
          type is(t1)
           if(extends_type_of(obj,obj2).neqv..true.)then
             print*,"102"
           end if
           if(extends_type_of(obj,obj2).neqv..true.)then
             print*,"103"
           end if
           if(extends_type_of(A= X,MOLD = obj2).neqv..true.)then
             print*,"104"
           end if
           if(extends_type_of(A= obj11,MOLD = obj12).neqv..true.)then
             print*,"304"
           end if
           if(extends_type_of(obj,obj6).neqv..true.)then
             print*,"108"
           end if
        end select
        print*,"PASS"
       end
