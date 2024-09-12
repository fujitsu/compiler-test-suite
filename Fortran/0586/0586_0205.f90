integer ,target,save :: tar2(2)=[1,2]
type ty
integer ,pointer :: ptr1=>tar2(2)
end type
type(ty) :: obj
call s(obj%ptr1)
contains
subroutine s(d)
integer ,pointer :: d
if( d .ne. 2)print*,"101"
if (associated(d) .eqv. .false.)print*,"102"
print*,"pass"
end subroutine
end
    
