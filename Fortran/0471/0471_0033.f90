module mod

  implicit none
  integer,target :: t1 = 5
  integer,target :: ta(2) = (/6,7/)
  type ty1
     integer,pointer :: p1
     integer,pointer :: p2
  end type ty1
  type (ty1) :: str
  data str%p1 / t1/
  data str%p2 / ta(2)/
contains
subroutine sub
if (str%p1.ne.5) print *,'ng'
if (str%p2.ne.7) print *,'ng'
end subroutine sub
end

use mod
call sub
print *,'pass'
end program
