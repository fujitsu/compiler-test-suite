print *,'pass'
end

subroutine ifun01(ix,ia)
integer,intent(in) :: ia
character,target,intent(inout) :: ix
j=kind(ia)
ix='a'
end subroutine
subroutine ifun02(ix,ia)
integer,target,intent(in) :: ia
character,target,intent(inout) :: ix
j=kind(ia)
ix='a'
end subroutine

subroutine test01()
interface assignment(=)   
subroutine ifun01(ix,ia)
integer,intent(in) :: ia
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

subroutine test02()
interface assignment(=)   
subroutine ifun02(ix,ia)
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
   integer :: ibb(10)
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
integer p(1)
p=1
ipp=iaa
p=ibb(p)
p=aaa%ibb(p)
ipp=bbb%iaa
ipp=ccc%iaa
end
