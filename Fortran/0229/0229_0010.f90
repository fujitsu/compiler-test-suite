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
    
     module k3               
     contains
       function   pr()       
         use ::n02
       entry      proc()       
         procedure (s1),pointer :: proc ,pr
         proc=>s1
       end function
     end
    
     use k3     
   
       print *,'pass'
     end 
           subroutine s1(p) 
            use mod01
            type(type01) :: p
          end subroutine s1
