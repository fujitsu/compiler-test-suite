MODULE m1

TYPE ty
INTEGER::ii
INTEGER::jj
END TYPE
INTEGER,TARGET,PROTECTED::aa(2)=100

INTERFACE OPERATOR(+)
PROCEDURE fun
END INTERFACE OPERATOR(+)
CONTAINS
FUNCTION fun(dmy1,dmy2)
TYPE(ty)::fun
TYPE(ty),POINTER,INTENT(IN)::dmy1
INTEGER,POINTER,INTENT(IN)::dmy2
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
fun%ii=dmy1%ii+dmy2
fun%jj=dmy1%jj+dmy2
END FUNCTION
END MODULE
PROGRAM MAIN
USE m1
TYPE(ty),TARGET::obj
TYPE(ty),POINTER::ptr
TYPE(ty)::total
ptr=>obj
ptr%ii=10
ptr%jj=10
total = ptr  + aa(2)   
PRINT*,total
print*,"Pass"
END PROGRAM

