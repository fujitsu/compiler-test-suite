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
fun%ii=dmy1(1)%ii+dmy2
fun%jj=dmy1(1)%jj+dmy2
END FUNCTION
END MODULE

PROGRAM MAIN
USE m1
type ts
class(ty),allocatable::obj(:)
end type

type(ts)::objTS
call sub(objTS)

contains
subroutine sub(arg)
type(ts),target::arg
TYPE(ty)::total
INTEGER,TARGET::ii=100

allocate(arg%obj(10))
arg%obj(2)%ii=20
arg%obj(2)%jj=20
total = arg%obj(2:8:2) + ii
if (total%ii /=120 .or. total%jj /=120)print*,101
print*,"pass"
end subroutine
END PROGRAM
