module mod1
type tt
 real :: rr = 5.6
end type
end module

program main
use mod1

interface operator(+)
function pls(p1,p2)
import tt
type(tt),intent(in) :: p1,p2
type(tt) :: pls
end function
end interface operator(+)

type(tt) ::act,act2
act%rr=14.54

if(fun(act,act2)==1) print*,'pass'

contains
function fun(dmy,dmy2)
 type(tt)::dmy2,dmy
 associate(a=>dmy+dmy2)
  if(a%rr==real(20)) fun=1
 end associate
end function
end

function pls(p1,p2)
use mod1
type(tt),intent(in) :: p1,p2
type(tt) :: pls

pls%rr = real(int(p1%rr)+1+int(p2%rr))
end function
