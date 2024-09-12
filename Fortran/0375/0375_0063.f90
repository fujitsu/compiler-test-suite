module mod
  type str
    integer,private :: pi
    integer,private :: pj
  end type
  type(str),save :: t
end module

use mod
print *,'pass'
end
