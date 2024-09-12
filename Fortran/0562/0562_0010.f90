subroutine s1
type ty1
integer::ii
end type
type ty2
logical::ll
type(ty1)::obj
end type
type,extends(ty2)::ty3
end type
integer::aa
type(ty3),target::tar1
type(ty2),target::tar2
aa =fun(tar1%obj%ii,tar2%ll)
if(aa==10)print*,"Pass"
if (tar1%obj%ii /= 10)print*,103
contains
integer function fun(ptr1,ptr2)
integer,pointer,intent(in)::ptr1
logical,pointer,intent(in)::ptr2
if (.NOT.associated(ptr1))print*,101
if (.NOT.associated(ptr2))print*,102
ptr1=10
fun=ptr1
end function
end subroutine

call s1
end
