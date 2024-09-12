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
class(ty),POINTER,INTENT(IN)::dmy1
INTEGER,POINTER,INTENT(IN)::dmy2
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
fun%ii=dmy1%ii+dmy2
fun%jj=dmy1%jj+dmy2
END FUNCTION
END MODULE

PROGRAM MAIN
USE m1
CLASS(ty),TARGET,allocatable::obj
TYPE(ty)::total
INTEGER,TARGET::ii=100

allocate(obj)
obj%ii=20
obj%jj=20
total = obj + ii
if (total%ii /=120 .or. total%jj /=120)print*,101
print*,"pass"
END PROGRAM
