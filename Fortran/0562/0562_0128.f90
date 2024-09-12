program   p
type ty
integer :: ii
end type ty


type(ty) :: obj

call sub(obj)

contains
subroutine sub(ij)
 class(ty),target ::ij
 ij%ii= 13
 call sub2(ij)
end subroutine sub

subroutine sub2(ptr)
class(ty),pointer,intent(in) :: ptr

if(ptr%ii .ne. 13)print*,101
print*,"pass"

end subroutine sub2

end 

