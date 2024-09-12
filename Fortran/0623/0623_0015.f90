module mod01
 type t
  class(*) ,pointer :: ip=>null()
 end type
 type b
  type(t)  :: i
 end type
 contains
  subroutine sub1(ii)
   type(b) :: ii(1)
  end subroutine
end module

use mod01

type(b) :: ss(1)

call sub (ss)
call sub1(ss)
call sub2(ss)

print *,'pass'

contains
 subroutine sub(ii)
  type(b) :: ii(1)
 end subroutine
end

subroutine sub2(ii)
 use mod01
 type(b) :: ii(1)
end subroutine
