type t
character(5)::ch(2)
end type
type(t)::tt
class(*),allocatable::aaa(:)
tt%ch="12345"
aaa=tt%ch(:2)
select type(aaa)
type is(character(*))
if(len(aaa)/=5) print *,'err1'
if(aaa(1)//"e"/="12345e") print *,'err2',aaa(1)//"e"
if(aaa(2)//"e"/="12345e") print *,'err3',aaa(2)//"e"
end select
print *,'pass'
end

