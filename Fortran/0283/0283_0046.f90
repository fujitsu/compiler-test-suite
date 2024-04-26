module mod1
type t
 integer::i
end type

type,extends(t) :: tt
 character::c1='x'
 character::c2='x'
 character(len=6)::c3='x'
end type

type(tt), save::src

contains
integer function fun(d1,d2)
character::d1
type(tt)::d2
if(d1==d2%c1) fun=1
if(d1==d2%c2) fun=0
end function
end module

program main
use mod1
character::ch
class(tt),allocatable::obj

src%i=1
allocate(obj,source=src)

associate(a=>obj)
 select type(a)
 type is(tt)
  ch='a'
  a%c1='a'
  a%c2='b'
 end select
 if(fun(ch,a)==1) print*,'pass'
end associate
end
