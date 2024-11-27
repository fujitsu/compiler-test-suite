module m2
 type ty
integer(kind=4) :: num
integer(kind=4) :: num1
end type

type, extends(ty):: ty1
integer(kind=8) :: num2
end type

type, extends(ty1):: ty2
integer(kind=8) :: num3
end type
end module
use m2
TYPE con
class(ty),POINTER::ptr
class(ty),POINTER::ptr_1(:)
END TYPE
INTERFACE OPERATOR(+)
function pls(a,b)
use m2
class(ty1),intent(IN) :: a
class(ty2),intent(in) :: b
class(ty1),pointer :: pls
END function
END INTERFACE operator(+)

TYPE(con)::obj(10)
type(ty1),POINTER::pptr
type(ty2),POINTER::pptr1
allocate(pptr)
allocate(pptr1)
pptr%num = 20
pptr1%num = 10
allocate(obj(1)%ptr,SOURCE=(pptr+pptr1))
print*,obj(1)%ptr%num
END
function pls(a,b)
use m2
class(ty1),intent(IN) :: a
class(ty2),intent(in) :: b
class(ty1),pointer :: pls
allocate(pls)
pls%num = a%num + b%num
END function
