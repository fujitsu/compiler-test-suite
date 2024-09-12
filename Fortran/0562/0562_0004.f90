type ty1
logical::ii
end type

interface
logical function fun(d1,d2)
logical,pointer,intent(in)::d1
integer,pointer,intent(in)::d2
end function
end interface

type ty2
integer::ii
type(ty1)::obj
end type
type(ty2),target::tar
call sub
contains
subroutine sub
logical::ll
ll = fun(tar%obj%ii,tar%ii)
if(ll)print*,"Pass"
end subroutine
end

logical function fun(dmy1,dmy2)
logical,pointer,intent(in)::dmy1
integer,pointer,intent(in)::dmy2
if (.NOT.associated(dmy1))print*,101
if (.NOT.associated(dmy2))print*,102
fun = .true.
end function

