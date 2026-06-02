      module mod01        ! 1)
        type :: type01    ! 2)
           integer :: x
        end type type01
      end module mod01
     
module z
  interface
    module subroutine sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
    end subroutine
   end interface
end
      
   submodule  (z) smod 
     contains
       module subroutine sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
       end subroutine sub
     end
    
     use z                     ! 15)
       print *,'sngg559o : pass'
     end 
