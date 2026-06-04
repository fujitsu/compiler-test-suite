     module mod
       type :: base
         class(*),pointer:: next
       end type

     contains

       recursive subroutine s0(value,kp)
         class(*),pointer, intent(inout) :: value
         if (kp>20) return
         select type (value)
           type is(base)
             allocate(base::value%next)
             kp=kp+1
             call s00(value%next,kp)
         end select
       end subroutine 
       recursive subroutine s00(value,kp)
         class(*),pointer, intent(inout) :: value
         if (kp>20) return
         select type (value)
           type is(base)
             allocate(base::value%next)
             kp=kp+1
             call s0(value%next,kp)
         end select
       end subroutine 

     end module mod

     use mod
     class(*),pointer :: value
     allocate(base::value)
     kp=1
     call s0(value,kp)
     print *,'sngg278p : pass'
     end 

