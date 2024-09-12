        type t1
          integer::a=23
        end type
        type,extends(t1)::t2
          integer::b=24
        end type
        type ty 
          class(t1),pointer:: cptr(:)
        end type
        type(ty)::obj
         class(t1),pointer:: base(:)
         allocate(t2::obj%cptr(5))
         allocate(t2::base(5))
         associate(X=>(obj%cptr))
          call sub(X)
          select type (asc=>X)
           class default
              print*,"102"
           type is (t1)
              print*,"105"
           type is (t2)
              call sub(asc)
              associate(Z=>asc)
               if(any(Z%a.ne.23))print*,"101"
               if(Z(1)%a.ne.23)print*,"121"
              end associate
          end select    
         end associate
         associate(X=>(base))
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
          contains 
          subroutine sub(obj1)
          class(*)::obj1(:) 
           select type (asc=>obj1)
           class default
              print*,"102"
           type is (t1)
              print*,"105"
           type is (t2)
               if(any(asc%a.ne.23))print*,"101"
               if(any(asc%b.ne.24))print*,"104"
               if(any(shape(asc).ne.5))print*,"503"
               if(size(asc).ne.5)print*,"513"
          end select  
          end
        end
