module m1
 interface sub
  module procedure s1
 end interface
 contains
  subroutine s1(i)
  integer(kind=1) :: i
  i=1
  end subroutine
end module

module m2
 interface sub
  module procedure s1
 end interface
 contains
  subroutine s1(i)
  integer(kind=2) :: i
  i=2
  end subroutine
end module
module m7
 contains
  subroutine s1(i)
  integer(kind=4) :: i
  i=4
  end subroutine
end module

module m3
use m7,s2=>s1
 interface sub
  module procedure s1
  module procedure s2
 end interface
 contains
  subroutine s1(i)
  integer(kind=8) :: i
  i=8
  end subroutine
end module

use m1
use m2
use m3
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=4) :: i4
integer(kind=8) :: i8
call sub(i1)
if (i1.ne.1) write(6,*) "NG"
call sub(i2)
if (i2.ne.2) write(6,*) "NG"
call sub(i4)
if (i4.ne.4) write(6,*) "NG"
call sub(i8)
if (i8.ne.8) write(6,*) "NG"
print *,'pass'
end
