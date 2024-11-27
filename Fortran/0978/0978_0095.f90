module mod
  integer,private :: aaa
  integer,public :: bbb
  protected :: aaa
  protected :: bbb
end module
use mod
print *,'pass'
end
