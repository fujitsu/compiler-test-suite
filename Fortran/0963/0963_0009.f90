program main
type tt
 integer::i=0
end type

type(tt),target::tgt

associate(a=>fun())
 a%i = 4
end associate

contains
function fun() result(res)
 class(tt),pointer::res
 res=>tgt
end function
end
