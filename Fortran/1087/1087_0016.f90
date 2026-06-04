module mod
integer :: jjj1=1
end

use mod
IMPLICIT NONE
integer :: jjj2=2
call sub1()
associate(ia=>jjj1)
block
integer :: arr(ia),jj
if (size(arr).ne.1) print *,'ng'
jj=ia
if (jj.ne.1) print *,'ng'
end block
end associate
print *,'pass'
contains
subroutine sub1()
IMPLICIT NONE
associate(ia=>jjj1)
block
integer :: arr(ia),jj
if (size(arr).ne.1) print *,'ng'
jj=ia
if (jj.ne.1) print *,'ng'
end block
end associate
associate(ia=>jjj2)
block
integer :: arr(ia),jj
if (size(arr).ne.2) print *,'ng'
jj=ia
if (jj.ne.2) print *,'ng'
end block
end associate
end subroutine
end
