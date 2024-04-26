      module mod01
        type :: type01    
           integer :: x
        end type type01
     end
     
      module n02          
        contains           
           function p1() 
            use mod01
            type(type01) :: p1
            p1%x=1
          end function 
      end 
    
     module k3                  
     contains
       subroutine sub1 (proc)
         use ::n02
         use mod01
         procedure (p1) :: proc
       end subroutine 
     end
    
     use k3                   
       print *,'pass'
     end 
