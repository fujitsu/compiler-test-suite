module mod1
 type mty1
  integer           :: mi1 = 1
 end type
 type,extends(mty1) :: mty2
 end type
 type,extends(mty2) :: mty3
 end type
 type,extends(mty3) :: mty4
 end type
end module

use mod1

type, extends(mty2) :: ty0
 integer   :: i0 = 1
end type

type, extends(mty3) :: ty1
 character :: s1 = 'J'
end type

type, extends(mty4) :: ty2
 integer   :: i2 = 11
end type

type, extends(ty2)  :: ty3
 character :: s3 = 'T'
end type

type, extends(ty3) :: ty4
 type(ty0) :: t0
 type(ty1) :: t1
end type

type (ty4) :: t4

t4 = ty4(ty3 = ty3(), t1 = ty1(), t0  = ty0())
t4 = ty4(t1  = ty1(), t0 = ty0(), ty3 = ty3())

print *,'pass'

end
