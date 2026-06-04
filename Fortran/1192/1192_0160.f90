module m1
type x1
  integer::x1a=1
end type
type x2
  type(x1):: x2a
  type(x1):: x2b
end type
type x3
  type(x2):: x3a
  type(x1):: x3b
end type
type x4
  type(x3):: x4a
  type(x1):: x4b
end type
type x5
  type(x4):: x5a
  type(x1):: x5b
end type
type(x5):: v1,v2
namelist /nam/v1,v2
contains
recursive subroutine s
write(23,nam)
end
end
use m1
call s
print *,'sngg461p : pass'
end
