        class (*), pointer :: a
        class (*), pointer :: b(:)
        integer,target::t1(5)= [1,2,3,4,5]
        allocate(a,source=1)
        b=>t1
        select type (X=>a)
          class default
             print*,"103"
          type is (integer)
             if(associated(a,X).neqv..true.)print*,"101"
             if(associated(a,a).neqv..true.)print*,"102"
        end select
        select type (X=>b)
          class default
             print*,"103"
          type is (integer)
             if(associated(b,X).neqv..true.)print*,"201"
             if(associated(b,t1).neqv..true.)print*,"302"
        end select
        print*,"PASS"
        end

