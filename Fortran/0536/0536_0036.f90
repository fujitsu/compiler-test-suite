type t
character(5)::ch
end type
type(t),target::tt
class(*),pointer::aaa
tt%ch="12345"
aaa=>tt%ch(1:)
select type(aaa)
type is(character(*))
if(len(aaa)/=5) print *,'err1'
if(aaa//"e"/="12345e") print *,'err2'
end select
print *,'pass'
end

