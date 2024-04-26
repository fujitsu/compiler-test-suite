program main
type test
 integer::i=0
end type

type,extends(test)::test1
 integer::i2=0
end type

type tt
 class(test),pointer::cmp
end type

type(tt) :: obj
type(test1),target::tgt

obj%cmp=>tgt

associate(a=>obj%cmp)
 select type(a)
 type is(test1)
 a%i=10
 a%i2=12
 end select
end associate

if(obj%cmp%i==10) print*,'pass'
end
