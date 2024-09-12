        type t1
          integer::a=23
        end type
        type,extends(t1)::t2
          integer::b=24
        end type
        type ty 
          class(t1),allocatable:: cptr
          class(t1),pointer:: cptr2
          class(t1),allocatable:: cptr3(:)
        end type
        type(ty)::obj
          class(t1),allocatable:: base
         allocate(t2::obj%cptr)
         allocate(t2::obj%cptr3(5))
         allocate(t1::obj%cptr2)
         allocate(t2::base)
         associate(X=>(obj%cptr),Y=>(obj%cptr2),Z=>(obj%cptr3))
          if(X%a.ne.23)print*,"134"
          if(Y%a.ne.23)print*,"154"
          if(any(Z%a.ne.23))print*,"156"
          if(size(Z).ne.5)print*,"157"
          select type (asc=>X)
           class default
              print*,"102"
           type is (t1)
              print*,"105"
           type is (t2)
             if(asc%a.ne.23)print*,"101"
             if(asc%b.ne.24)print*,"105"
          end select    
         select type (asc=>Y)
           class default
              print*,"102"
           type is (t1)
             if(asc%a.ne.23)print*,"131"
          end select    
          select type (asc=>Z)
           class default
              print*,"102"
           type is (t1)
              print*,"105"
           type is (t2)
             if(any(asc%a.ne.23))print*,"131"
             if(any(asc%b.ne.24))print*,"155"
          end select 
         end associate
         associate(X=>(base))
          select type (asc=>X)
           class default
              print*,"106"
           type is (t1)
              print*,"107"
           type is (t2)
             if(asc%a.ne.23)print*,"104"
             if(asc%b.ne.24)print*,"105"
          end select     
         end associate
          print*,"pass"
        end
