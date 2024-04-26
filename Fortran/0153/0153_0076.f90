module m1
type typ1
character(kind=4,len=1)::ch
end type
character(kind=4,len=2)::x
type(typ1),pointer::type
end
subroutine s1
use m1
call s2
end subroutine
subroutine s2
use m1
x=type%ch//4_"b"
end subroutine
use m1
allocate(type)
type%ch=4_"a"
call s1
if (x.ne.4_"ab") print*,'err'
print *,'pass'
end
