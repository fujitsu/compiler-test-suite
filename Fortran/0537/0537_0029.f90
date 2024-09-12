character(5)::ch
ch="12345"
call s(ch)
print *,'pass'
end
subroutine s(a)
character(*)::a
type t
character(:),allocatable::ch
end type
type(t),target::tt
class(*),pointer::aaa
k=2
tt%ch=a
aaa=>tt%ch(1:)
select type(aaa)
type is(character(*))
if(len(aaa)/=5) print *,'err1'
if(aaa//"e"/="12345e") print *,'err2'
end select

aaa=>tt%ch(2:)
select type(aaa)
type is(character(*))
if(len(aaa)/=4) print *,'err11'
if(aaa//"e"/="2345e") print *,'err22'
end select

aaa=>tt%ch(k:)
select type(aaa)
type is(character(*))
if(len(aaa)/=4) print *,'err111'
if(aaa//"e"/="2345e") print *,'err222'
end select
end subroutine s

