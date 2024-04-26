module mod1
type tt
 character::c1
 character::c2
end type

interface nam
 module procedure sub
 subroutine s(dd)
  integer::dd
 end subroutine
end interface

integer::check

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
 call nam(a,obj)
 call nam(check)
 if(check/=0) print*,102
end associate
end

subroutine s(dd)
 integer::dd
 dd=0
end subroutine
