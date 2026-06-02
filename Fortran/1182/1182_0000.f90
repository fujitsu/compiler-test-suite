module m1                              ! 1)
  type x0
    integer::x01
  end type
  type,extends(x0)::x1                 ! 2)
    integer::x11
  end type
contains
 subroutine  chk(x)                    !12-1-2)
   class(x0),intent(in)::x
   select type(x)                      !12-1-3)
    type is(x1)
    class default
      print *,'error-1'
   end select
 end subroutine 
end

module d_mod                            ! 3)
   !!! use m1                           ! 7)
contains 
subroutine s1(d)                        ! 4) , 6)
use m1                                  ! 5)
class(x1),allocatable:: d               ! 6)
end subroutine
end

module m2
contains
subroutine s0(v2)                       ! 8), 12-3-1)
use d_mod                               ! 9)
use m1                                  !10)
class(x1),allocatable:: v1,v2           !11)           
allocate(v1)                            !12-1-1)
call chk( v1 )                          !12-1-2)
!
if (.not.same_type_as(v1,v2)) print *,'error-2' !12)-2
!
!!!! allocte(v2)                        !12-3-2)
select type(v2)                         !12-3-3)
 type is(x1)
 class default
   print *,'error-3'
end select
end subroutine 
subroutine ss
use m1
class(x1),allocatable:: v2
allocate(v2)
call s0(v2)
end subroutine 
end

use m2
call ss

print *,'sngg237o : pass'
end
