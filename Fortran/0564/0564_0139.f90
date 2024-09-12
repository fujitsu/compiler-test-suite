MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER,allocatable :: ii
  CONTAINS
  PROCEDURE,PASS :: add => fun
  GENERIC :: OPERATOR(+)=> add
END TYPE

type, extends(ty)::ts
  integer,allocatable :: jj
end type

contains
FUNCTION fun(d1,n)
class(ty),allocatable::fun(:)
class(ty),INTENT(IN) :: d1
integer,INTENT(IN) :: n

allocate(ts::fun(2))
allocate(fun(1)%ii)
allocate(fun(2)%ii)
select type(fun)
    type is(ts)
allocate(fun(1)%jj)
allocate(fun(2)%jj)
fun(1)%jj = d1%ii + n + 2
fun(2)%jj = d1%ii + n + 3
    end select

fun(1)%ii = d1%ii + n
fun(2)%ii = d1%ii + n
return
END FUNCTION
END MODULE

PROGRAM main
USE mod1

integer  :: a,b
class(ty),allocatable :: obj1(:)
class(ty),pointer :: obj2

allocate(obj1(2))
allocate(ts::obj2)
allocate(obj2%ii)

obj2%ii=10

obj1 = obj2 + 5

a=obj1(1)%ii
b=obj1(2)%ii

if(a .ne. 15) print*,"121"
if(b .ne. 15) print*,"122"

select type (obj1)
type is (ts)
    if(obj1(1)%jj .ne. 17) print*,"123"
    if(obj1(2)%jj .ne. 18) print*,"124"
    print*, "PASS"
class default
        print*,"ERROR"
end select
END PROGRAM
