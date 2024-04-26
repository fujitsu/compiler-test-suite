module H
 type taa(i)
  integer,kind:: i=10000
  character(i),allocatable:: d1
 end type
 type tt
  type (taa(1000)) :: ss
 end type
 type(tt) :: str

end module H

module K
  use H,only:g1=>str
end module K

module P
  use H,only:f1=>str
end module P

subroutine s1()
  use H
  use K
  use P
str%ss%d1='a'
end subroutine s1
module mmm
use H
use K
use P
contains
subroutine s2()
if (g1%ss%d1.ne.'a') print *,'err'
if (len(g1%ss%d1).ne.1000) print *,'err'
end subroutine
end

use mmm
allocate(str%ss%d1)
call s1()
call s2()
print *,'pass'
end
