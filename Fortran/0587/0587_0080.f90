         module m
         intrinsic AINT
         
         interface
           function AINT2(X)
            REAL,INTENT(IN)::X
            REAL::AINT2
          end function
          
         end interface
         type ty
           procedure(AINT2),pointer,nopass:: ptr1=>AINT2  
         end type
         end module
         use m
         type(ty)::obj
          if(associated(obj%ptr1) .eqv. .false.)print*,"111"
          if(obj%ptr1(10.0).ne.40.0)print*,"103"
         print*,"pass"
         end
           function AINT2(X)
            REAL,INTENT(IN)::X
            REAL::AINT2
            AINT2 =40.0
            
          end function
