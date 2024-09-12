        type t1
          integer::a=23
        end type
        type,extends(t1)::t2
          integer::b=24
        end type
        type ty 
          class(t1),allocatable:: cptr(:)
        end type
        type(ty)::obj
          class(t1),allocatable:: base(:)
         allocate(t2::obj%cptr(5))
         allocate(t2::base(5))
         associate(X=>(obj%cptr))
          if(any(shape(X).ne.5))print*,"901" 
          if(any(X%a.ne.23))print*,"902"
          select type (asc=>X)
           class default
              print*,"102"
           type is (t1)
              print*,"105"
           type is (t2)
             if(any(asc%a.ne.23))print*,"101"
             if(asc(1)%a.ne.23)print*,"121"
             if(any(shape(asc).ne.5))print*,"904" 
          end select    
         end associate
         associate(X=>(base))
          if(any(shape(X).ne.5))print*,"901" 
          if(any(X%a.ne.23))print*,"902"
          select type (asc=>X)
           class default
              print*,"106"
           type is (t1)
              print*,"107"
           type is (t2)
             if(any(asc%a.ne.23))print*,"104"
             if(asc(1)%a.ne.23)print*,"124"
          end select     
         end associate
          print*,"pass"
        end
