MODULE m1

TYPE ty
INTEGER::ii
INTEGER::jj
END TYPE
INTEGER,TARGET,protected::aa(2)=100
INTERFACE OPERATOR(+)
PROCEDURE fun
END INTERFACE OPERATOR(+)
CONTAINS
FUNCTION fun(dmy1,dmy2)
TYPE(ty)::fun
TYPE(ty),POINTER,INTENT(IN)::dmy2
INTEGER,POINTER,INTENT(IN)::dmy1
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
fun%ii=dmy1+dmy2%ii
fun%jj=dmy1+dmy2%jj
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
total = aa(2)+ ptr   
PRINT*,total
print*,"Pass"
END PROGRAM
