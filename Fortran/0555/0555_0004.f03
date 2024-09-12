implicit class(ty) (t)
type ty
 integer::i
end type

type(ty),target::a
pointer::tptr
class(ty),pointer::y

tptr=>a
y=>a

call func

contains
 subroutine func
 integer::t

 t =1
 y%i = t
 tptr%i = y%i
 if (tptr%i .EQ. y%i) print *,"PASS"

end subroutine func
end
