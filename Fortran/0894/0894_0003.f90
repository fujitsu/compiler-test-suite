MODULE m1

character(LEN=10),target,protected::ch="aaaaaaaaaa"
INTEGER,TARGET,PROTECTED::aa=100

INTERFACE OPERATOR(+)
PROCEDURE fun
END INTERFACE OPERATOR(+)
CONTAINS
FUNCTION fun(dmy1,dmy2)
integer::fun
character(LEN=:),POINTER,INTENT(IN)::dmy1
INTEGER,POINTER,INTENT(IN)::dmy2
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
fun = LEN(dmy1)+dmy2
END FUNCTION
END MODULE

PROGRAM MAIN
USE m1
integer::res
res = ch  + aa   
if (res /=110)print*,101
print*,"Pass"
END PROGRAM

