program main
type tt
 integer::i(10)=0
end type

type(tt) :: obj

associate(a=>obj%i(1:8:2))
 a=10
end associate

if(obj%i(4)==0 .and. obj%i(5)==10) print*,'pass'
end
