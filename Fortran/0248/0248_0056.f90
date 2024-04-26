module m1
type ty
  integer(kind=4) :: num=0
  integer(kind=4) :: num1=0
end type

type, extends(ty):: ty1
  integer(kind=8) :: num2=0
end type

type, extends(ty1):: ty2
  integer(kind=8) :: num3=0
end type

TYPE con
  class(ty1),POINTER::ptr_1(:)
END TYPE
end module

use m1
INTERFACE OPERATOR(+)
elemental function pls(a,b)
import ty1
import ty2
class(ty1),intent(IN) :: a
class(ty1),intent(in) :: b
type(ty1) :: pls
END function
END INTERFACE operator(+)

TYPE(con)::obj(10)
class(ty1),POINTER::pptr(:)
class(ty2),POINTER::pptr1(:)

allocate(pptr(5))
allocate(pptr1(5))

pptr%num = 20
pptr1%num = 50

allocate(obj(1)%ptr_1,MOLD=(pptr+pptr1))

if(size(obj(1)%ptr_1%num)/=5) print*,102
obj(1)%ptr_1%num=10
if(any(obj(1)%ptr_1%num/=10)) print*,103

select type(aa=>obj(1)%ptr_1)
type is(ty1)
class default
print*,801
end select
print*,'pass'

END

elemental function pls(a,b)
use m1
class(ty1),intent(IN) :: a
class(ty1),intent(in) :: b
type(ty1) :: pls

select type(b)
type is(ty2)
 pls%num = a%num + b%num
end select
END function
