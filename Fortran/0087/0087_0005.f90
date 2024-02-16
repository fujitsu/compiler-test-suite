      module mod01       
        type :: type01  
           integer :: x
        end type type01
      end module mod01
     
      module n02       
        interface     
           subroutine s1(p) 
            use mod01
            type(type01) :: p
          end subroutine s1
        end interface
      end 

   module w
    interface 
       subroutine sub (proc)     
         use ::n02
         procedure (s1) :: proc 
       end subroutine
    end interface
   end
    
     use w                   
       print *,'pass'
     end 
