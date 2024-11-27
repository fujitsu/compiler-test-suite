call test01()
print *,'pass'
end

subroutine ifun(ix,ia)
integer,target,intent(in) :: ia
character,target,intent(inout) :: ix
j=kind(ia)
ix='a'
end subroutine
subroutine test01()
interface assignment(=)   
subroutine ifun(ix,ia)
integer,target,intent(in) :: ia
character,target,intent(inout) :: ix
integer,pointer :: ip
end subroutine
end interface
character :: ipp
integer,target :: iaa
integer,target :: ibb(10)
type ty1
   integer :: iaa
end type
type(ty1),target :: aaa
type ty2
   integer,pointer :: iaa
end type
type(ty2) :: bbb
type ty3
   integer :: iaa
end type
type(ty3),pointer :: ccc
ipp=iaa
ipp=ibb(1)
ipp=aaa%iaa
allocate(bbb%iaa)
ipp=bbb%iaa
allocate(ccc)
ipp=ccc%iaa
end
