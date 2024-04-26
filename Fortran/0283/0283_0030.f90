program main
type tt
 integer::i
end type

type,extends(tt) :: tt2
 integer::i2
end type

class(tt),allocatable :: obj
allocate(tt2::obj)
select type(obj)
type is(tt2)
 obj=tt2(2,3)
end select

associate(a=>obj)
select type(a)
type is(tt2)
 if(a%i==2 .and. a%i2==3) print*,'pass'
end select
end associate
end
