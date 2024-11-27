module m1
 type a
  sequence
  private
  integer b
 end type
 interface sub
  module procedure s1
 end interface
 contains
  subroutine s1(d1)
  type(a)::d1
   d1%b=1
   iii=d1%b
  end subroutine
end module

module m2
 type a
  sequence
  integer b
 end type
 interface sub
  module procedure s2
 end interface
 contains
  subroutine s2(d2)
  type(a)::d2
   iii=d2%b
  end subroutine
end module

use m1,ab=>a
use m2,a2=>a
 type a
  sequence
  integer b
 end type
type(a):: xx
type(ab):: d1
xx%b=1
call sub(d1)
call sub(xx)
print *,'pass'
end
