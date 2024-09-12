MODULE m1

TYPE ty
INTEGER::ii
INTEGER::jj
END TYPE

TYPE,extends(ty) ::  tty
INTEGER::kk
END TYPE

INTERFACE OPERATOR(+)
PROCEDURE fun
END INTERFACE OPERATOR(+)
CONTAINS
FUNCTION fun(dmy1,dmy2)
TYPE(ty)::fun
INTEGER,pointer,INTENT(IN)::dmy1
class(ty),POINTER,INTENT(IN)::dmy2
select type(dmy2)
        type is(tty)
                fun%ii=dmy2%kk+dmy1
                fun%jj=dmy2%jj+dmy1
        class default
                print*,"121"
end select
END FUNCTION
END MODULE

PROGRAM MAIN
USE m1
type(tty),TARGET,allocatable::obj
integer,target :: ii(2)
TYPE(ty)::total

allocate(obj)
total%ii = 10
total%jj = 10
obj%ii = 20
obj%jj = 30
obj%kk = 40

ii = 20
call sub(obj)
contains
subroutine sub(dmy)
class(ty),TARGET::dmy
total = ii(2) + dmy
if(total%ii .ne. 60) print*,"122"
if(total%jj .ne. 50) print*,"123"
print*,"Pass"
end subroutine
END PROGRAM
