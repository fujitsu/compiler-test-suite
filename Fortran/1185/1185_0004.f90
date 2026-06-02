      module mod01        ! 1)
        type :: type01    ! 2)
           integer :: x
        end type type01
      end module mod01
     
module z
            use mod01
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
       module procedure  sub
            type(type01) :: r
            r=p()
            if (r%x/=1) print *,1001
       end 
     end
    
     use z                     ! 15)
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
call sub(p)
       print *,'sngg558o : pass'
     end 
           function   p() 
            use mod01
            type(type01) :: p
            p%x=1
          end function
