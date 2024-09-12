type Atype
 integer::i=2
end type

type tt
 type(Atype)::arr(3)
end type

type(Atype)::act
call s(act)
contains
subroutine s(a)

class(Atype)::a
print*,tt([a,a,a]),': 2 2 2 PASS'
end subroutine
end
