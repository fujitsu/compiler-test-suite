      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     module k3
integer::x
     contains
       subroutine sub (p)       
         interface
           function   p() result(r)
            use mod01
            type(type01) :: r
          end function
         end interface
       end subroutine
     end
   module u1
     use k3,only:x
end
   module u2
     use u1,only:x
end
   module u3
     use u2,only:x
end
use u3
       print *,'pass'
     end 
