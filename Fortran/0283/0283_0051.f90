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
  a%i=5
 associate(b=>a)
  select type(b)
  type is(tt2)
   if(b%i/=a%i) then
    print*,101
   else
     b%i=10
     b%i2=12
   end if
  end select
 end associate
  if(a%i/=10) print*,102
 end select
end associate

select type(obj)
class is(tt)
 if(obj%i==10) print*,'pass'
end select
end
