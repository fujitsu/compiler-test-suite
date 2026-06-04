        type t1
         integer::a=12
        end type 
        type ty 
          class(t1),allocatable:: cptr
        end type
        type(ty)::obj
          class(t1),allocatable:: base
        allocate(t1::obj%cptr)
        allocate(t1::base)
        select type (asc=>obj%cptr)
         class default
             print*,"101"
         class is(t1)
             select type (asc2=>asc)
               class default
                   print*,"101"
               type is(t1)
                   if(asc2%a.ne.12)print*,"101"
                 select type (asc2=>asc)
                  class default
                    print*,"101"
                  type is(t1)
                   if(asc2%a.ne.12)print*,"101"
                    print*,"PASS"
                 end select
              end select
        end select
 
        end
