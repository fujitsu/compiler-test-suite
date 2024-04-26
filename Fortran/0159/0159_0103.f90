module H
  integer,allocatable:: d1
end module H

module K
  use H,only:g1=>d1
  integer,allocatable:: d1f
end module K

module P
  use H,only:f1=>d1
  integer,pointer    :: d1e
end module P

subroutine s1()
  use H
  use K
  use P
  integer,pointer    :: d1c
f1=10
end subroutine s1
module mmm
use H
use K
use P
  integer,pointer    :: d1a
contains
subroutine s2()
if (g1.ne.10) print *,'err'
end subroutine
end

use mmm
  integer,pointer    :: d1b
allocate(d1)
call s1()
call s2()
print *,'pass'
end
