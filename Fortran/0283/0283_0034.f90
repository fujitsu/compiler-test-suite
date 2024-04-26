module mod1
type tt
 character::c1
 character::c2
end type

contains
subroutine sub(d1,d2)
character::d1
type(tt)::d2
if(d1==d2%c1) print*,'pass'
if(d1==d2%c2) print*,'101'
end subroutine
end module

program main
use mod1
character::ch
type(tt)::obj
obj%c1='a'
obj%c2='b'

associate(a=>ch)
 a='a'
 call sub(a,obj)
end associate
end
