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
FUNCTION fun(dmy2,dmy1)
TYPE(ty)::fun
class(ty),POINTER,INTENT(IN)::dmy1
INTEGER,pointer,INTENT(IN)::dmy2
select type(dmy1)
        type is(tty)
            fun%ii=dmy1%kk+dmy2
            fun%jj=dmy1%jj+dmy2
        class default
            print*,"121"
end select
END FUNCTION
END MODULE

PROGRAM MAIN
USE m1
TYPE(tty),TARGET::obj
integer,target :: ii(2)
TYPE(ty)::total

total%ii = 10
total%jj = 10
obj%ii = 20
obj%jj = 30
obj%kk = 40
ii = 20

total = ii(2) + obj
if(total%ii .ne. 60) print*,"122"
if(total%jj .ne. 50) print*,"123"
print*,"Pass"
END PROGRAM
