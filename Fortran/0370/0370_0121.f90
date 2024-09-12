module mod
  type, private :: tp1
     integer(kind=4) :: ma(2) = (/2_4,3_4/)
     integer(kind=4) :: mb = 4_4
  end type tp1
  type, public :: tc
     type(tp1) :: t1
     integer(kind=8) :: mc(2) = 5_4
  end type tc
end module

use mod                          
  type(tc) a
  print *, a
  print *, a%t1%ma
  print *, a%mc
end

