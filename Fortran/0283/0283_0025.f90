program main
type tt
 real :: rr = 5.6
end type

type(tt) ::act2
integer :: act = 23

if(fun(act,act2)==1) print*,'pass'

contains
function fun(dmy,dmy2)
 integer::dmy
 type(tt)::dmy2
 associate(a=>dmy+int(dmy2%rr))
  if(a==28) fun=1
 end associate
end function
end
