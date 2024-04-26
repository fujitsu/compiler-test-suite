program main
type tt
 integer::i=0
end type

type,extends(tt) :: tt2
 integer::j=0
end type

type(tt2),target::tgt

associate(a=>fun())
 selecttype(a)
 type is(tt2)
  print*,'pass'
 endselect
end associate

contains
function fun() result(res)
 class(tt),pointer::res
 res=>tgt
end function
end
