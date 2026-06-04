module mmm
type t
real::r
end type
type(t)::tt
end
use mmm
interface aaa
procedure bbb
end interface
call aaa(tt)
if(tt%r/=-1.0) print *,'err'
call bbb(tt)
if(tt%r/=-1.0) print *,'err'
print *,'sngtin14:pass'
contains
subroutine bbb(tt)
type(t)::tt
tt%r=-1.0
end subroutine bbb
end
