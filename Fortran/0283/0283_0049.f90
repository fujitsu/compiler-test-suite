program main
type tt
 integer::i=0
end type

type(tt)::obj
associate(a=>obj)
 a%i=5
 associate(b=>a)
  if(b%i/=5) print*,101
  b%i=10
 end associate
 if(a%i/=10) print*,102
end associate

if(obj%i==10) print*,'pass'
end
