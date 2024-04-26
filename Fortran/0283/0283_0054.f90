program main
type tt
 character(len=10)::i='xxxxxxxxxx'
end type

type(tt) :: obj

associate(a=>obj%i(3:6))
 a='name'
end associate

if(obj%i=='xxnamexxxx') print*,'pass'
end
