type ty1
 integer::i
end type
type ty2
 type(ty1)::obj1
end type
type ty3
 type(ty2)::obj2
end type

type(ty3)::obj3
obj3%obj2%obj1%i = 3
associate (a=>obj3)
if (a%obj2%obj1%i == 3) then
 print *,'PASS'
else
 print *,'FAIL'
endif
end associate
end
