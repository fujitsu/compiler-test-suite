     module mod
       type :: base
         class(*),allocatable:: next
       end type

     contains

       recursive subroutine s0(value,kp)
         class(*),allocatable, intent(inout) :: value
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
     class(*)  ,allocatable :: value
     allocate(base::value)
     kp=1
     call s0(value,kp)
     print *,'sngg306p : pass'
     end 

