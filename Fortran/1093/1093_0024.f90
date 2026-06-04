module mod
interface aaa
procedure sub
procedure sub2
end interface
contains
subroutine sub(dmy,rr)
 integer,contiguous,pointer :: dmy(:)
dmy=>dmy
rr=20
end subroutine
subroutine sub2(dmy,ii)
 integer,           pointer :: dmy(:)
dmy=>dmy
 ii=10
end subroutine
end

use mod
integer,pointer,contiguous :: arr(:)
allocate(arr(8))
arr=1
ii=1
call aaa(arr   ,ii)
if (ii.ne.10) print *,'err'
print *,'pass'
end
