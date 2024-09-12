        type t1
         integer::a=10
        end type 
        type ty 
          class(*),allocatable:: cptr(:)
        end type
        type(ty)::obj
          class(*),allocatable:: base(:)
         allocate(obj%cptr(3),source=["abc","efg","lmn"])
         allocate(base(2),source=["ab","cd"])
         select type (asc=>obj%cptr)
           class default
              print*,"102"
           type is (integer)
               print*,"103"
           type is (character(len=*))
             if(asc(1).ne."abc")print*,"101"
             if(len(asc(1)).ne.3)print*,"102"
             if(asc(3).ne."lmn")print*,"121"
             if(len(asc(3)).ne.3)print*,"142"
           end select    
           select type (asc=>base)
           class default
              print*,"102"
           type is (integer)
               print*,"103"
           type is (character(len=*))
             if(asc(1).ne."ab")print*,"1101"
             if(len(asc(1)).ne.2)print*,"1102"
             if(asc(2).ne."cd")print*,"1131"
             if(len(asc(2)).ne.2)print*,"1132"
           end select     
           print*,"pass"
        end
