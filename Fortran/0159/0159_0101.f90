module H
  integer,pointer    :: d1
end module H

module K
  use H,only:g1=>d1
end module K
module K2
  use H,only:g2=>d1
end module 
module K3
  use H,only:g3=>d1
end module 

module P
  use H,only:f1=>d1
  use H,only:f2=>d1
  use H,only:f3=>d1
  use H,only:f4=>d1
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
subroutine s2a()
if (f1.ne.10) print *,'err'
call x1()
contains
subroutine x1()
use P
if (f2.ne.10) print *,'err'
call x2()
end subroutine
subroutine x2()
use H
use K
use K2
use K3
if (g2.ne.10) print *,'err'
if (g3.ne.10) print *,'err'
if (f3.ne.10) print *,'err'
end subroutine
end subroutine
end

use mmm
use K2
use K3
allocate(d1)
call s1()
call s2()
call s2a()
print *,'pass'
end
