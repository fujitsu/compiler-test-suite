class(*),pointer::a
type t
character(:),pointer::ch
end type
type(t)::tt
allocate(character(3)::tt%ch)
call s(a,tt)
print *,'pass'
contains
subroutine s(a,tt)
class(*),pointer::a
type(t)::tt
tt%ch="abc"
i=2
a=>tt%ch(2:)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err1'
if(a//"1"/="bc1") print *,'err2'
end select
a=>tt%ch(i:)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err11'
if(a//"1"/="bc1") print *,'err22'
end select
a=>tt%ch(int(2.0):)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err1'
if(a//"1"/="bc1") print *,'err2'
end select
end subroutine s
end
