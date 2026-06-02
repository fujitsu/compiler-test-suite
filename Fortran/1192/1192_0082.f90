     module mod
       type :: base
         class(*),allocatable:: next
       end type

     contains

       recursive subroutine s0(value,kp)
         class(*),allocatable, intent(inout) :: value
         if (kp>20) return
         select type (value)
           type is(base)
             allocate(base::value%next)
             kp=kp+1
             call s1(value%next,kp)
         end select
       end subroutine 
       recursive subroutine s1(value,kp)
         class(*),allocatable, intent(inout) :: value
         select type (value)
           type is(base)
             allocate(base::value%next)
             kp=kp+1
         end select
       end subroutine 

     end module mod

     use mod
     class(*),allocatable :: value
     allocate(base::value)
     kp=1
     call s0(value,kp)
     print *,'sngg279p : pass'
     end 

