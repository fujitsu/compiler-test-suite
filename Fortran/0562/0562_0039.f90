subroutine s1
type ty
integer::ii
end type

integer::jj


class(ty),allocatable,target::tar
type(ty)::tar2
tar2%ii = 13
allocate(tar,source=tar2)

jj=fun(tar)
    if(jj .ne. 23) print*,101
    print*,"PASS"



contains
integer function fun(dmy)
type(ty),pointer,intent(in)::dmy
fun=10 + dmy%ii
end function
end subroutine 
call s1
end
