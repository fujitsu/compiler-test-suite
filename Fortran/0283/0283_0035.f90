module mod1
type tt
 character::c1
 character::c2
end type

contains
function fun(d1,d2)
character::d1
type(tt)::d2
integer::fun
if(d1==d2%c1) fun=1
if(d1==d2%c2) fun=0
end function
end module

program main
use mod1
character::ch
type(tt)::obj
obj%c1='a'
obj%c2='b'

associate(a=>ch)
 a='a'
 if(fun(a,obj)==1) print*,'pass'
end associate
end
