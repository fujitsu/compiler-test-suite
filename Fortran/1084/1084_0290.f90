        type t0
         integer::x=12
        end type
        type,extends(t0):: t1
          integer::a=10
        end type
        type,extends(t1):: t3
          integer::c=10
        end type
        class(t0),allocatable:: obj(:)
        type(t1):: obj3
        type(t3):: obj4(4)
        allocate(t1::obj(5))
        select type(X=>obj)
          type is(t0)
           print*,"101"
          type is(t1)
           if(same_type_as(obj(1),X).neqv..true.)print*,"101"
           if(same_type_as(obj(1),obj3).neqv..true.)then
             print*,"102"
           end if
           if(same_type_as(obj(1),obj(2)).neqv..true.)then
             print*,"103"
           end if
           if(same_type_as(X,obj(2)).neqv..true.)then
             print*,"403"
           end if
           if(same_type_as(X(2),obj(2)).neqv..true.)then
             print*,"409"
           end if
           if(same_type_as(obj4,obj(2)).neqv..false.)then
             print*,"419"
           end if
           obj= obj4
           if(same_type_as(X, obj3).neqv..true.)print*,"101"
           if(same_type_as(obj3, X).neqv..true.)print*,"111"
        end select
         select type(X=>obj)
          type is(t0)
           print*,"301"
          type is(t1)
           if(same_type_as(obj(1),obj4(1)).neqv..true.)then
             print*,"302"
           end if
           if(same_type_as(obj(1),obj(4)).neqv..true.)then
             print*,"303"
           end if
           if(same_type_as(X,obj(4)).neqv..true.)then
             print*,"313"
           end if
        end select
        print*,"PASS"
       end
