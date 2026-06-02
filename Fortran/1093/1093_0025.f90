module mod
contains
subroutine sub(dmy,rr)
 integer,contiguous :: dmy(..)
rr=1
end subroutine
subroutine sub2(dmy,ii)
 integer            :: dmy(..)
ii=10
end subroutine
end

use mod
interface aaa
procedure sub
procedure sub2
end interface
integer :: arr(8)
arr=1
ii=1
call aaa(arr(::8),ii)
if (ii.ne.10) print *,'pass'
print *,'pass'
end
