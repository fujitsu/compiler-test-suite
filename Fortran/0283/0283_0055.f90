program main
type test
 integer::i
end type

type tt
 type(test)::cmp
end type

type(tt) :: obj

associate(a=>obj%cmp)
 a%i=10
end associate

if(obj%cmp%i==10) print*,'pass'
end
