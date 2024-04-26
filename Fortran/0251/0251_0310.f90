
subroutine sub()
implicit none
block  
type ty
sequence
integer :: ii
end type
type(ty), pointer :: obj_parent
block
type ty
sequence
integer :: ii
end type
type(ty), target :: obj
obj%ii=10
obj_parent => obj
if(obj_parent%ii .eq. obj%ii) then
print*, "pass"
else
print*, "fail"
endif
end block
end block 
end subroutine

call sub()
end

