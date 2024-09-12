    module m    
       type t1
         integer::a=10
        end type 
        type ty 
          class(*),allocatable:: cptr(:)
          class(*),pointer:: cptr2(:)
        end type
        type(ty),target::obj
     end module
     use m
          class(*),allocatable:: base(:)
         allocate(obj%cptr(3),source=["abc","efg","lmn"])
         allocate(base(2),source=["ab","cd"])
         obj%cptr2=>obj%cptr
         select type (asc=>obj%cptr(3))
           class default
              print*,"102"
           type is (integer)
               print*,"103"
           type is (character(len=*))
             if(asc.ne."lmn")print*,"121"
             if(len(asc).ne.3)print*,"142"
           end select    
         select type (asc=>obj%cptr2(3))
           class default
              print*,"102"
           type is (integer)
               print*,"103"
           type is (character(len=*))
             if(asc.ne."lmn")print*,"321"
             if(len(asc).ne.3)print*,"342"
           end select    
          select type (asc=>obj%cptr2)
           class default
              print*,"102"
           type is (integer)
               print*,"103"
           type is (character(len=*))
             if(asc(1).ne."abc")print*,"221"
             if(len(asc(1)).ne.3)print*,"242"
             if(any(shape(asc).ne.3))print*,"231"
           end select   

         select type (asc=>base(1))
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
