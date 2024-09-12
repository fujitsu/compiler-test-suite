        type t1
         integer::a=12
        end type 
        type,extends(t1):: ty 
          class(t1),allocatable:: cptr
        end type
        class(ty),allocatable:: base
        allocate(ty::base)
        allocate(t1::base%cptr)
        select type (asc=>base)
         class default
             print*,"101"
         class is(ty)
             select type (asc2=>asc%cptr)
               class default
                   print*,"101"
               class is(t1)
                   print*,"PASS"
                   if(asc2%a.ne.12)print*,"101"
        end select
        end select
        end
