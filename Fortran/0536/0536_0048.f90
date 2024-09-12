type t
character(5)::ch(2)
end type
class(t),allocatable::tt
class(*),allocatable::aaa(:)
allocate(tt)
tt%ch="12345"
aaa=tt%ch(:)(2:)
select type(aaa)
type is(character(*))
if(len(aaa)/=4) print *,'err1'
if(aaa(1)//"e"/="2345e") print *,'err2'
class default
print *,'ng'
end select
print *,'pass'
end

