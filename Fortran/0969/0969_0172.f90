intrinsic :: acos, dacos, iabs

type ty01
 procedure(integer(kind=4)), pointer, nopass :: pi4p   => null()
 procedure(real   (kind=4)), pointer, nopass :: pr4p   => null()
 procedure(real   (kind=8)), pointer, nopass :: pr8p   => null()
 procedure(iabs)           , pointer, nopass :: piabs  => null()
 procedure(acos)           , pointer, nopass :: pacos  => null()
 procedure(dacos)          , pointer, nopass :: pdacos => null()
end type

integer(kind=4), parameter :: i4 = 1
real   (kind=4), parameter :: r4 = 1.0
real   (kind=8), parameter :: r8 = 1.0

type (ty01) :: t01

t01 = ty01(pi4p   = iabs )
t01 = ty01(pr4p   = acos )
t01 = ty01(pr8p   = dacos)
t01 = ty01(piabs  = iabs )
t01 = ty01(pacos  = acos )
t01 = ty01(pdacos = dacos)

print *,t01%pi4p(i4)
print *,t01%pr4p(r4)
print *,t01%pr8p(r8)
print *,t01%piabs(i4)
print *,t01%pacos(r4)
print *,t01%pdacos(r8)

end
