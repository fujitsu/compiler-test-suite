type t
character(5)::ch
end type
class(t),allocatable::tt
class(*),allocatable::aaa
allocate(tt)
tt%ch="12345"
aaa=tt%ch(:3)
select type(aaa)
type is(character(*))
if(len(aaa)/=3) print *,'err1'
if(aaa//"e"/="123e") print *,'err2'
class default
print *,'ng'
end select
print *,'pass'
end

