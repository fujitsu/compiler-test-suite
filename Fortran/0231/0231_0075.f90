      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     module k3
integer::x
     contains
       function   p   ( )  result(r)
         interface
           function   w() result(q)
            use mod01
            type(type01) :: q
          end function
         end interface
         procedure(w),pointer::r      
         r=>w
       end function
     end
     use k3,only:x
       print *,'pass'
     end 
           function   w() result(q)
            use mod01
            type(type01) :: q
            q%x=1
          end function
