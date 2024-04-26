module H
  integer,allocatable:: d1,c1,c2,c3,c4,c5(:)
  integer            :: x2/1/,x3/1/
  integer,pointer   :: x2a/null()/,x3a/null()/
  integer            :: x1=1
end module H

module K
  use H,only:g1=>d1
  use H,only:p1=>x1
end module K

module P
  use H,only:f1=>d1
  use H,only:v1=>x1
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
f1=99
print *,'pass'
end
