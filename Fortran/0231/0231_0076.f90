      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     module k3
integer::x
     contains
       subroutine s       
       entry     sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
       end subroutine 
     end
     use k3,only:x
type type01
   integer::z
end type
type(type01)::q
q%z=1
if (q%z/=1) print *,1010
       print *,'pass'
     end 
