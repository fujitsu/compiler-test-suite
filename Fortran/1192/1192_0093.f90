     module mod
       type :: base
         class(*),allocatable:: next
       end type

     contains

       recursive subroutine s0(value,kp)
         class(*), intent(inout) :: value
         if (kp>20) return
         select type (z=>value)
           type is(base)
             allocate(base::z%next)
             kp=kp+1
             call s0(z%next,kp)
         end select
       end subroutine 

     end module mod

     use mod
     type(base),target :: value
     kp=1
     call s0(value,kp)
     print *,'sngg305p : pass'
     end 

