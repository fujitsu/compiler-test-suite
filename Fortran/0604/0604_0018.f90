        type t1
         integer::a=10
        end type 
        type ty 
          class(*),allocatable:: cptr
        end type
        type(ty)::obj
          class(*),allocatable:: base
         allocate(obj%cptr,source="abc")
         allocate(base,source="ab")
         select type (asc=>obj%cptr)
           class default
              print*,"102"
           type is (integer)
               print*,"103"
           type is (character(len=*))
             if(asc.ne."abc")print*,"101"
             if(len(asc).ne.3)print*,"102"
           end select    
           select type (asc=>base)
           class default
              print*,"102"
           type is (integer)
               print*,"103"
           type is (character(len=*))
             if(asc.ne."ab")print*,"1101"
             if(len(asc).ne.2)print*,"1102"
           end select     
           print*,"pass"
        end
