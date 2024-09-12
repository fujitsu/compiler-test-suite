program main
type ty1(k1, k2)
  integer,kind :: k1=2, k2
  integer::i1(k2)
end type

type, extends(ty1) :: ty2(k3)
  integer,kind ::  k3=2
  integer::i2(k3)
end type

type ty0
type(ty2(k2=2))::obj1
end type

type(ty0)::obj2

if(SIZE(obj2%obj1%i1)==2) then
print*,'PASS'
else
print*,'ERROR'
end if

end

