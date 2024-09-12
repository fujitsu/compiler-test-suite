MODULE m1

TYPE ty
INTEGER::ii
INTEGER::jj
END TYPE

INTERFACE OPERATOR(+)
PROCEDURE fun
END INTERFACE OPERATOR(+)
CONTAINS
FUNCTION fun(dmy1,dmy2)
TYPE(ty)::fun
class(ty),POINTER,INTENT(IN)::dmy1(:)
INTEGER,POINTER,INTENT(IN)::dmy2
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
fun%ii=dmy1(2)%ii+dmy2
fun%jj=dmy1(2)%jj+dmy2
END FUNCTION
END MODULE

PROGRAM MAIN
USE m1
type ts
class(ty),pointer::tar(:)
end type

type(ts)::objTS
allocate(objTS%tar(10))
call sub(objTS%tar)

contains
subroutine sub(obj)
class(ty),pointer::obj(:)
TYPE(ty)::total
INTEGER,TARGET::ii=100

obj(2)%ii=20
obj(2)%jj=20
total = obj + ii
if (total%ii /=120 .or. total%jj /=120)print*,101
print*,"Pass"
end subroutine
END PROGRAM