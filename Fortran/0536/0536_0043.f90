type t
character(5)::ch(2)
end type
type(t)::tt
class(*),allocatable::aaa(:)
integer::i(2)
i=2
tt%ch="12345"
aaa=tt%ch(i)(2:)
select type(aaa)
type is(character(*))
if(len(aaa)/=4) print *,'err1'
if(aaa(1)//"e"/="2345e") print *,'err2',aaa(1)//"e"
if(aaa(2)//"e"/="2345e") print *,'err3',aaa(2)//"e"
end select
print *,'pass'
end

