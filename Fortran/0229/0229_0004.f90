      module mod01        
        type :: type01   
           integer :: x
        end type type01
      end module mod01
     
     module k3
     contains
       subroutine sub (p)       
            use mod01
            type(type01) :: p
if (p%x/=1) print *,2002
       end subroutine sub
     end
    
     use k3
    call ss
       print *,'pass'
     end 
  subroutine ss()
            use mod01
            use k3 
            type(type01) :: t
t%x=1
   call sub(t)
end
