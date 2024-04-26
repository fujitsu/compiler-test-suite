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
       subroutine sub (p)
         use ::n02
         type ty
         procedure (s1),pointer,nopass :: pr
         end type
         interface 
            function p()
               import::ty
               type(ty)::p
            end function
         end interface
       end subroutine
     end
    
     use k3
       print *,'pass'
     end 
