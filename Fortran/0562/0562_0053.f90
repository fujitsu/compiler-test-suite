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
TYPE(ty),POINTER,INTENT(IN)::dmy1
INTEGER,pointer,INTENT(IN)::dmy2
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
fun%ii=dmy1%ii+dmy2
fun%jj=dmy1%jj+dmy2
dmy1%jj=25
dmy2 = 7
END FUNCTION
END MODULE
PROGRAM MAIN
USE m1
TYPE(ty),TARGET::obj
TYPE(ty)::t1,t2
type(ty),TARGET::tar
obj%ii=10
obj%jj=20
tar%ii=2
tar%jj=4
t1 = obj  + tar%ii 
if (t1%ii /=12 .or. t1%jj /=22)print*,103
if (obj%jj /=25 .or. tar%ii /=7)print*,104
t2 = obj + tar%jj
if (t2%ii /=14 .or. t2%jj /= 29)print*,105
if (tar%jj /=7)print*,106
print*,"Pass"
END PROGRAM

