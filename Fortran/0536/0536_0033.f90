type t
character(5)::ch
end type
type(t)::tt
class(*),allocatable::aaa
tt%ch="12345"
aaa=tt%ch(2:3)
select type(aaa)
type is(character(*))
if(len(aaa)/=2) print *,'err1'
if(aaa//"e"/="23e") print *,'err2'
end select
print *,'pass'
end

