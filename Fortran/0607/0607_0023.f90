module mod
type tt
integer::i=0
end type
end module

program main
use mod
type tt1
integer::j=0
type(tt)::obj(2)
end type
type(tt1),target::tgt

associate(a=>fun(tgt))

if ((a(1)%obj(a(tgt%obj(2)%i)%obj(2)%i)%i == 2) .AND. &
    (a(2)%obj(a(tgt%obj(2)%i)%obj(2)%i)%i == 1)) print *,'PASS'

end associate
contains
function fun(tgt) result(res)
type(tt1),target::tgt
type(tt1),target::res(2)
tgt%obj(2)%i = 1
res(1)%obj(2)%i= 2
res(2)%obj(2)%i= tgt%obj(2)%i
end function
end
