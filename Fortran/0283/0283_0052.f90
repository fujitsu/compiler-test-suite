program main
type tt
 integer::i(10)
end type

type(tt) :: obj

associate(a=>obj%i)
 a=10
 a(5)=5
end associate

if(obj%i(5)==5) print*,'pass'
end
