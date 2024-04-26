program main
type tt
 integer::i
end type

type,extends(tt)::tt2
 integer::j
end type

type con
 class(tt),pointer::ptr
end type

type(tt2),target::tgt
type(tt2)::check
type(con)::obj

tgt=tt2(2,3)

obj%ptr=>tgt

associate(a=>obj%ptr)
 select type(a)
 type is(tt2)
  a=tt2(5,6)
  check=a
 end select
end associate

if(tgt%i/=check%i .or. tgt%j/=check%j) then
 print*,'FAIL'
else
 print*,'pass'
end if
end
