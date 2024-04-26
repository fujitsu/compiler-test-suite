module mod
type x1
 integer :: x11
 integer :: x12
end type
type x2
 integer :: x21
 integer :: x22
end type
end module
subroutine s1
use mod
interface 
 subroutine s11(v1,v2)
  import 
   type x1
    integer :: x11
   end type
   type(x1)::v1
   type(x2)::v2
 end subroutine
 subroutine s12(v1,v2)
  import x2
   type x1
    integer :: x11
   end type
   type(x1)::v1
   type(x2)::v2
 end subroutine
end interface
end
call s1
print *,'pass'
end
