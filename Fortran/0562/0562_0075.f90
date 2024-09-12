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
TYPE(ty),POINTER,INTENT(IN)::dmy1(:)
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
CLASS(ty),allocatable::obj(:)
TYPE(ty)::total
end type

type(ts),pointer:: objTS
INTEGER,TARGET::ii=100

allocate(objTS)
allocate(objTS%obj(10))
objTS%obj(:)%ii=20
objTS%obj(:)%jj=20
objTS%total = objTS%obj(2:8:2) + ii
if (objTS%total%ii /=120 .or. objTS%total%jj /=120)print*,101
print*,"Pass"
END PROGRAM
