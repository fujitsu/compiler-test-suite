      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     
     module k3
     contains
       subroutine sub (p)       
         use ::mod01
         procedure (type(type01))::p
         call chk(p())
       end subroutine
     end
     subroutine chk(d)
     use mod01
      type(type01)::d
       if (d%x/=1) print *,1001
    end 
    function p() result(r)
     use mod01
      type(type01)::r
    r%x=1
    end
    subroutine dd
         use ::mod01
         use k3
         procedure (type(type01))::p
       call sub(p)
    end
     use k3         
     call dd

       print *,'pass'
     end 
