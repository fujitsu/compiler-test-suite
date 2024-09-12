program main
type tt
 integer::i=0
end type

type,extends(tt)::tt2
 integer::i2=0
end type
 
class(*),pointer::obj
allocate(tt2::obj)

associate(a=>obj)
 select type(a)
  class is(tt)
   print *,'PASS'
 end select
end associate
end
