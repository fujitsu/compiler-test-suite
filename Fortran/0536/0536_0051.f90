type t
character(5)::ch
end type
class(t),allocatable::tt
class(*),allocatable::aaa
allocate(tt)
i=2
tt%ch="12345"
aaa=tt%ch(i**1:)
select type(aaa)
type is(character(*))
if(len(aaa)/=4) print *,'err1'
if(aaa//"e"/="2345e") print *,'err2'
class default
print *,'ng'
end select
print *,'pass'
end

