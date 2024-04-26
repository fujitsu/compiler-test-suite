program main
type tt
 integer::i=0
end type

type,extends(tt) :: tt2
 integer::j=0
end type

type(tt2),target::tgt(3,4,2)

associate(a=>fun(tgt))
 selecttype(a)
 type is(tt2)
  if(a(2,3,1)%i==3.and. a(2,3,1)%j==4) print*,'pass'
 endselect
end associate

contains
function fun(dum) 
 class(tt),pointer::fun(:,:,:)
 type(tt2),target::dum(3,4,2)
 dum(2,3,1)%i=3
 dum(2,3,1)%j=4
 fun=>dum
end function
end
