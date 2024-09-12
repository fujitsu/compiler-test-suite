subroutine s1
type ty
integer::ii
end type

type,extends(ty) :: tty
integer::jj
end type

type ts
class(ty),allocatable::tar(:,:)
class(ty),allocatable::atar(:)
end type

type(ts),target::objTS(10)

allocate(tty::objTS(2)%tar(10,10))
allocate(tty::objTS(2)%atar(10))

objTS(2)%tar(2,2)%ii = 20
objTS(2)%atar(2)%ii = 30

jj=fun(objTS(2)%tar(2:8:2,2:8:2), objTS(2)%atar(2:8:2))
if(jj .ne. 50) print*,"121",jj

print*,"Pass"

contains
integer function fun(dmy1, dmy2)
type(ty),pointer,intent(in)::dmy1(:,:)
type(ty),pointer,intent(in)::dmy2(:)

fun=dmy1(1,1)%ii+dmy2(1)%ii
end function
end subroutine

call s1
end
