program main
type ty1(k1, k2)
  integer,kind :: k1=2, k2
  integer::i1(k2)
end type

type, extends(ty1) :: ty2(k3)
  integer,kind ::  k3=2
  integer::i2(k3)
end type

type ty3
type(ty2(k2=2))::obj1
end type

type ty4
type(ty3)::obj2
  integer::i3(4)=10
end type

type(ty4)::obj3

if(SIZE(obj3%obj2%obj1%i1)==2 .and. SIZE(obj3%i3)==4) then
print*,'PASS'
else
print*,'ERROR'
end if

end

