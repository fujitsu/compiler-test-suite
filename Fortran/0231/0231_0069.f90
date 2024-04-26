      module n02          
        type :: type01    
           integer :: x
        end type type01
        interface          
           subroutine s1(p) 
            import::type01
            type(type01) :: p
          end subroutine s1
        end interface
      end 
     module k3                  
     contains
       subroutine sub (proc)  
         use ::n02
         procedure (s1) :: proc
       end subroutine sub
     end
     use k3                   ,only:sub
       print *,'pass'
     end 
