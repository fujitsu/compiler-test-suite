       type ty 
        class (*), pointer :: a
        class (*), pointer :: b(:)
       end type
       type(ty)::obj
        integer,target::t1(5)= [1,2,3,4,5]
        allocate(obj%a,source=1)
        obj%b=>t1
        select type (X=>obj%a)
          class default
             print*,"103"
          type is (integer)
             if(associated(obj%a,X).neqv..true.)print*,"101"
             if(associated(obj%a,obj%a).neqv..true.)print*,"102"
        end select
        select type (X=>obj%b)
          class default
             print*,"103"
          type is (integer)
             if(associated(obj%b,X).neqv..true.)print*,"201"
             if(associated(obj%b,t1).neqv..true.)print*,"302"
        end select
        print*,"PASS"
        end

