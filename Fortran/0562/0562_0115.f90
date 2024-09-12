subroutine s1
type ty
integer::ii
end type

type,extends(ty) :: tty
integer::jj
end type

type ts
class(ty),allocatable::tar
class(ty),allocatable::atar(:)
end type

type(ts),target::objTS(10)
allocate(tty::objTS(2)%tar)
allocate(tty::objTS(2)%atar(2))

objTS(2)%tar%ii = 20
objTS(2)%atar(1)%ii = 30
objTS(2)%atar(2)%ii = 40
jj=fun(objTS(2)%tar)
if(jj .ne. 30) print*,"121",jj

jj=fun(objTS(2)%atar(1))
if(jj .ne. 40) print*,"122",jj

jj=afun(objTS(2)%atar)
if(jj .ne. 50) print*,"123",jj

print*,"Pass"

contains
integer function fun(dmy)
type(ty),pointer,intent(in)::dmy
fun= dmy%ii + 10
end function

integer function afun(dmy)
type(ty),pointer,intent(in)::dmy(:)
afun= dmy(2)%ii + 10
end function
end subroutine

call s1
end
