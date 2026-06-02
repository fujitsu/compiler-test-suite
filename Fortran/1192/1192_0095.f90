     module mod
       type :: base
         class(*),pointer:: next
       end type

     contains

       recursive subroutine s0(value,kp)
         class(*),pointer, intent(inout) :: value
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
     class(*),pointer :: value
     allocate(base::value)
     kp=1
     call s0(value,kp)
     print *,'sngg307p : pass'
     end 

