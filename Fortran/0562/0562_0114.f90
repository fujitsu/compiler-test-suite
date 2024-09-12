subroutine s1
type ty
integer::ii
end type

type,extends(ty) :: tty
integer::jj
end type

class(ty),allocatable,target::tar
class(ty),allocatable,target::atar(:)
allocate(tty::tar)
allocate(tty::atar(2))
tar%ii = 20
atar(1)%ii = 30
atar(2)%ii = 40
jj=fun(tar)
if(jj .ne. 30) print*,"121",jj

jj=fun(atar(1))
if(jj .ne. 40) print*,"122",jj

jj=afun(atar)
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
