      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     module k3
integer::x1
     contains
       subroutine s1 (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
         call chk(p())
       end subroutine
       subroutine t1 (pp,r)       
         procedure (s1) :: pp    
         interface
           function   r() 
            use mod01
            type(type01) :: r
          end function
         end interface
         call pp(r)
       end subroutine
     end
     module k32
integer::x2
     contains
       subroutine u1 (ppp,r)       
         procedure (v1) :: ppp    
         interface
           function   r() 
            use mod01
            type(type01) :: r
          end function
         end interface
         call ppp(r)
       end subroutine
       subroutine v1 (pppp)       
         interface
           function   pppp() 
            use mod01
            type(type01) :: pppp
          end function
         end interface
         call chk(pppp())
       end subroutine
     end
subroutine tmp
use k32,only:x2
end
     use k3,only:x1
     call tx
     call tmp
       print *,'pass'
     end 
        subroutine tx
            use mod01
            use k3
            use k32
         interface
           function   q() 
            use mod01
            type(type01) :: q
          end function
         end interface
          call s1(q)
          call t1(s1,q)
          call u1(s1,q)
          call v1(q)
        end subroutine
        subroutine chk(y)
            use mod01
            type(type01) :: y
            if (y%x/=1) print *,90001
        end subroutine
           function   q() 
            use mod01
            type(type01) :: q
             q%x=1
          end function
