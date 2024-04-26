      module mod01        
        type :: type01   
           integer :: x
        end type type01
      end module mod01
     module k3
     contains
       function   p()       
            use mod01
            type(type01) :: p
p%x=1
       end function
     end
     use k3,only:p
    call ss(p())
       print *,'pass'
     end 
  subroutine ss(t)
            use mod01
            use k3 
            type(type01) :: t
if (t%x/=1) print *,1001
end
