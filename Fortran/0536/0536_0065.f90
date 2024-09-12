call s1
call s2
print *,'pass'
contains
subroutine s1
type t
character(5)::cc(2)
end type
class(t),allocatable::tt
type(t)::ttt=t(["123","123"])
allocate(tt)
tt%cc=ttt%cc(:)(1:)
if(tt%cc(1)/="123") print *,'err'
if(tt%cc(2)/="123") print *,'err'
tt=ttt
if(tt%cc(1)/="123") print *,'err'
if(tt%cc(2)/="123") print *,'err'
end subroutine s1
subroutine s2
type t
character(5),pointer::cc(:)
end type
class(t),pointer::tt
type(t),target::ttt
allocate(tt)
allocate(tt%cc(1),ttt%cc(1))
ttt%cc="123"
tt%cc=>ttt%cc(:)(1:)
if(tt%cc(1)/="123") print *,'err'
tt=>ttt
if(tt%cc(1)/="123") print *,'err'
end subroutine s2
end
