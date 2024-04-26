      module mod01        
        type :: type01   
           integer :: x
        end type type01
      end module mod01
     module k3
     contains
       subroutine sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
         call ss(p())
       end subroutine sub
     end
     use k3,only:sub 
         interface
           function   f() 
            use mod01
            type(type01) :: f
           end function
         end interface
call sub(f)
       print *,'pass'
     end 
           function   f() 
            use mod01
            type(type01) :: f
            f%x=1
           end function
  subroutine ss(t)
            use mod01
            type(type01) :: t
if (t%x/=1) print *,2002
end
