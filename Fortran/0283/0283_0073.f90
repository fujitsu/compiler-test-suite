program main
type tt
 integer::i
end type

type,extends(tt)::tt2
 integer::j
end type

type con
 class(tt),allocatable::ptr(:)
end type

type(tt2)::tgt(3)
type(tt2)::check(3)
type(con)::obj

tgt=tt2(2,3)

allocate(obj%ptr(3),source=tgt)

associate(a=>obj%ptr(2))
 select type(a)
 type is(tt2)
  a=tt2(5,6)
  check=a
 end select
end associate

if(any(check%i/=5 .or. check%j/=6)) then
 print*,'FAIL'
else
 print*,'pass'
end if
end
