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
        use mod01
        interface
           subroutine xroc(p)
            use mod01
            type(type01) :: p
          end subroutine
        end interface
            type(type01) :: p
 call xroc(p)
if (p%x/=1)print *,100
       end subroutine sub
     end
   module mm
     use k3
   end
subroutine ss
use mm
        interface
           subroutine x(p)
            use mod01
            type(type01) :: p
          end subroutine
        end interface
call sub(x)

end
use mm
call ss
       print *,'pass'
     end 
           subroutine x(p)
            use mod01
            type(type01) :: p
p%x=1
          end subroutine
