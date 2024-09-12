      module mod01
        type :: type01    
           integer :: x
        end type type01
      end module mod01

     module k3                  
     contains
       subroutine sub (proc)  
            use mod01
         interface
           subroutine s1(p) 
            use mod01
            type(type01) :: p
           end subroutine 
         end interface
         procedure (s1) :: pro,proc2
            type(type01) :: x
         call proc(x)
if (x%x/=1) print *,2002
return 
       entry      sub2 (proc2)  
         call proc2(x)
if (x%x/=1) print *,2003
       end subroutine sub
     end

     use k3                   
call tt
       print *,'pass'
     end 
subroutine tt
use k3
         interface
           subroutine s1(p) 
            use mod01
            type(type01) :: p
           end subroutine 
         end interface
         procedure (s1) :: p
call sub(p)
end
           subroutine p (u)
            use mod01
            type(type01) :: u
u%x=1
           end subroutine 
