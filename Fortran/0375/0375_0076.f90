module mod
  type str1
    integer,private :: pi1
    integer,private :: pi2
  end type
  type str2
    integer :: pi1
    integer,private :: pi2
  end type
  type str3
    integer :: pi1 = 100
    integer,private :: pi2
  end type
  type str4
    integer :: pi1
    integer,private :: pi2 = 200
  end type
type(str3) :: s13 = str3(100,200)
type(str4) :: s14 = str4(100,200)

end module

use mod

print *,'pass'

end
