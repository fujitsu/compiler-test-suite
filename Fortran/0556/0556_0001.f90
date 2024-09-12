implicit integer(t),class(ty)(z)
type ty
 integer::i
end type

pointer::z1,z2

z2=>func(z1)

contains
 function  func(a1) result(a2)
 implicit logical(z), class(ty)(a)
 pointer::a1,a2

 type(ty), target :: t1
 a1=>t1
 a2=>t1

 z = .true. 
 if (z .EQV. .true.) print *,"PASS"

end function func
end
