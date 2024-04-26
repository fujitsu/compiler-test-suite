module H
  integer,allocatable:: d1
  integer,pointer    :: ss(:)=>null()
end module H

module K
  use H,only:g1=>d1
end module K

module P
  use H,only:f1=>d1
end module P

subroutine s1()
  use H
  use K
  use P
f1=10
end subroutine s1
module mmm
use H
use K
use P
contains
subroutine s2()
if (g1.ne.10) print *,'err'
end subroutine
end

use mmm
allocate(d1)
call s1()
call s2()
print *,'pass'
end
