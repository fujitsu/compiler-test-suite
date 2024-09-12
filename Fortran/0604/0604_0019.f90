        type t1
         integer::a=10
        end type 
        type,extends(t1)::t2
         integer::b =20
        end type
        type ty 
          class(t1),allocatable:: cptr
        end type
        type(ty)::obj
          class(t1),allocatable:: base
         allocate(t2::obj%cptr)
         allocate(t2::base)
         select type (asc=>obj%cptr)
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
             if(asc%a.ne.10)print*,"101"
             if(asc%b.ne.20)print*,"102"
           end select    
           select type (asc=>base)
           class default
              print*,"102"
           type is (t1)
              print*,"403"
           type is (t2)
             if(asc%a.ne.10)print*,"104"
             if(asc%b.ne.20)print*,"103"
           end select     
           print*,"pass"
        end
