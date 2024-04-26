module H
  integer,allocatable:: d1
end module H

module K
  use H
end module K

module P
  use H
end module P

subroutine s1()
  use H
  use K
  use P
d1=10
end subroutine s1
module mmm
use H
use K
use P
contains
subroutine s2()
if (d1.ne.10) print *,'err'
call s3()
end subroutine
subroutine s3
d1=1
end subroutine
end

module yyy
use H
use K
use P
contains
subroutine s5()
if (d1.ne.1) print *,'err'
call s3()
end subroutine
RECURSIVE subroutine s3
d1=2
if (1.eq.2) call s3a()
return
entry s3a()
end subroutine
end

subroutine s4()
use H
if (d1.ne.1) print *,'err'
end subroutine

use mmm
use yyy
allocate(d1)
call s1()
call s2()
call s4()
call s5()
if (d1.ne.2) print *,'err'
print *,'pass'
end
