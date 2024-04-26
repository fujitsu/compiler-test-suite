program main
type tt
 integer::i=0
end type

type,extends(tt)::tt2
 integer::i2=0
end type

class(tt),pointer::obj
class(tt),pointer::obj1
allocate(tt2::obj)
allocate(tt2::obj1)

associate(a=>obj)
 a%i=5
 obj1%i = 5
 associate(b=>obj1)
  if(b%i/=5) then
   print*,101
  else
   select type(b)
   type is(tt2)
    b%i=10
    b%i2=12
   end select
  end if
  a%i = 10
 end associate
 if(a%i/=10) print*,102
end associate

if(obj%i==10) print*,'pass'
end
