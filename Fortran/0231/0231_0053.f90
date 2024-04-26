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
       subroutine sub (xroc)
         use ::n02
        interface
           subroutine xroc(p)
            use mod01
            type(type01) :: p
          end subroutine
        end interface
       end subroutine sub
     end
     use k3,only:sub
       print *,'pass'
     end 
