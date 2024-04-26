      module mod01      
        type :: t   
           integer :: x
        end type

        type :: type01   
           integer :: x
      type(t)::tx
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
       function   proc()       
         use ::n02
         procedure (s1),pointer :: proc 
         proc=>s1
       end function
     end
    
     use k3,only:proc     
    use mod01,only:t,type01
   
       print *,'pass'
     end 
           subroutine s1(p) 
            use mod01
            type(type01) :: p
          end subroutine s1
