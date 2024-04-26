program main
type tt
 integer::i=0
end type

type(tt) :: obj(5)
obj(3) = tt(3)
associate(a=>obj(3))
 if(a%i/=3) print*,'101'
 a%i = 25
end associate

if(obj(3)%i==25) print*,'pass'
end
