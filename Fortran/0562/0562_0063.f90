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
class(*),POINTER,INTENT(IN)::dmy1(:)
INTEGER,POINTER,INTENT(IN)::dmy2
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102

select type(dmy1)
        type is(ty)
            fun%ii=dmy2
            fun%jj=dmy2
        class default
            print*, "122"
end select
END FUNCTION
END MODULE

PROGRAM MAIN
USE m1
type ts
class(*),allocatable::obj(:)
TYPE(ty)::total
end type

type(ts),TARGET::objTS
INTEGER,TARGET::ii=100

allocate(ty::objTS%obj(10))
objTS%total = objTS%obj(2:8:2) + ii
if (objTS%total%ii /=100 .or. objTS%total%jj /=100)print*,101
print*,"Pass"
END PROGRAM
