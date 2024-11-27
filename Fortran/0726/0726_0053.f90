print *,'pass'
end

function ifun01(ia,ib) result(ip)
pointer :: ip
integer,intent(in) :: ia
integer,intent(in) :: ib
j=kind(ib)
ip=ia
end function
function ifun02(ia,ib) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
integer,target,intent(in) :: ib(:)
j=kind(ib)
ip=ia
end function

subroutine test01()
interface operator(.aaa.)
function ifun01(ia,ib) result(ip)
pointer :: ip
integer,intent(in) :: ia
integer,intent(in) :: ib
end function
end interface
interface operator(.bbb.)
function ifun02(ia,ib) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
integer,target,intent(in) :: ib(:)
end function
end interface
pointer :: ipp
integer,target :: iaa
integer,target :: ibb(1)
type ty1
   integer :: iaa
   integer :: ibb(1)
end type
type ty2
   integer,pointer :: iaa
   integer,pointer :: ibb(:)
end type
type ty3
   integer :: iaa
   integer :: ibb(1)
end type
type(ty1),target ::  aaa1,aaa2(1)
type(ty2) ::         bbb1,bbb2(1)
type(ty3),pointer :: ccc1,ccc2(:)
type(ty2),target ::  ddd1,ddd2(1)
type(ty2),pointer :: eee1,eee2(:)
target iii
allocate(bbb1%iaa)
allocate(ccc1)
allocate(bbb1%ibb(1))
allocate(ddd1%iaa)
allocate(ddd1%ibb(1))
allocate(eee1)
allocate(eee1%iaa)
allocate(eee1%ibb(1))
allocate(bbb2(1)%iaa)
allocate(ccc2(1))
allocate(bbb2(1)%ibb(1))
allocate(ddd2(1)%iaa)
allocate(ddd2(1)%ibb(1))
allocate(eee2(1))
allocate(eee2(1)%iaa)
allocate(eee2(1)%ibb(1))
ipp=>bbb1%iaa
ipp=>ccc1%iaa
ipp=>iaa.aaa.iii
ipp=>ibb(1).aaa.iii
ipp=>aaa1%iaa.aaa.iii
ipp=>bbb1%iaa.aaa.iii
ipp=>ccc1%iaa.aaa.iii
ipp=>ddd1%iaa.aaa.iii
ipp=>eee1%iaa.aaa.iii
ipp=>aaa2(1)%iaa.aaa.iii
ipp=>bbb2(1)%iaa.aaa.iii
ipp=>ccc2(1)%iaa.aaa.iii
ipp=>ddd2(1)%iaa.aaa.iii
ipp=>eee2(1)%iaa.aaa.iii
end

subroutine test02()
interface operator(.aaa.)
function ifun01(ia,ib) result(ip)
pointer :: ip
integer,intent(in) :: ia
integer,intent(in) :: ib
end function
end interface
interface operator(.bbb.)
function ifun02(ia,ib) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
integer,target,intent(in) :: ib(:)
end function
end interface
pointer :: ipp
type ty1
   integer :: iaa
   integer :: ibb(1)
end type
type ty2
   integer,pointer :: iaa
   integer,pointer :: ibb(:)
end type
type ty3
   integer :: iaa
   integer :: ibb(1)
end type
type(ty1),target ::  aaa1,aaa2(1)
type(ty2) ::         bbb1,bbb2(1)
type(ty3),pointer :: ccc1,ccc2(:)
type(ty2),target ::  ddd1,ddd2(1)
type(ty2),pointer :: eee1,eee2(:)
target iii
allocate(bbb1%iaa)
allocate(ccc1)
allocate(bbb1%ibb(1))
allocate(ddd1%iaa)
allocate(ddd1%ibb(1))
allocate(eee1)
allocate(eee1%iaa)
allocate(eee1%ibb(1))
allocate(bbb2(1)%iaa)
allocate(ccc2(1))
allocate(bbb2(1)%ibb(1))
allocate(ddd2(1)%iaa)
allocate(ddd2(1)%ibb(1))
allocate(eee2(1))
allocate(eee2(1)%iaa)
allocate(eee2(1)%ibb(1))
ipp=>aaa1%ibb(1).aaa.iii
ipp=>bbb1%ibb(1).aaa.iii
ipp=>ccc1%ibb(1).aaa.iii
ipp=>ddd1%ibb(1).aaa.iii
ipp=>eee1%ibb(1).aaa.iii
ipp=>aaa2(1)%ibb(1).aaa.iii
ipp=>bbb2(1)%ibb(1).aaa.iii
ipp=>ccc2(1)%ibb(1).aaa.iii
ipp=>ddd2(1)%ibb(1).aaa.iii
ipp=>eee2(1)%ibb(1).aaa.iii
end

subroutine test03()
interface operator(.aaa.)
function ifun01(ia,ib) result(ip)
pointer :: ip
integer,intent(in) :: ia
integer,intent(in) :: ib
end function
end interface
interface operator(.bbb.)
function ifun02(ia,ib) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
integer,target,intent(in) :: ib(:)
end function
end interface
pointer :: izz(:)
integer,target :: ibb(1)
type ty1
   integer :: iaa
   integer :: ibb(1)
end type
type ty2
   integer,pointer :: iaa
   integer,pointer :: ibb(:)
end type
type ty3
   integer :: iaa
   integer :: ibb(1)
end type
type(ty1),target ::  aaa1,aaa2(1)
type(ty2) ::         bbb1,bbb2(1)
type(ty3),pointer :: ccc1,ccc2(:)
type(ty2),target ::  ddd1,ddd2(1)
type(ty2),pointer :: eee1,eee2(:)
target iii
integer iii(1)
allocate(bbb1%iaa)
allocate(ccc1)
allocate(bbb1%ibb(1))
allocate(ddd1%iaa)
allocate(ddd1%ibb(1))
allocate(eee1)
allocate(eee1%iaa)
allocate(eee1%ibb(1))
allocate(bbb2(1)%iaa)
allocate(ccc2(1))
allocate(bbb2(1)%ibb(1))
allocate(ddd2(1)%iaa)
allocate(ddd2(1)%ibb(1))
allocate(eee2(1))
allocate(eee2(1)%iaa)
allocate(eee2(1)%ibb(1))
izz=>ibb(1:1).bbb.iii
izz=>aaa1%ibb(1:1).bbb.iii
izz=>bbb1%ibb(1:1).bbb.iii
izz=>ccc1%ibb(1:1).bbb.iii
izz=>ddd1%ibb(1:1).bbb.iii
izz=>eee1%ibb(1:1).bbb.iii
izz=>aaa2(1:1)%iaa.bbb.iii
izz=>ccc2(1:1)%iaa.bbb.iii
izz=>aaa2%iaa.bbb.iii
izz=>ccc2%iaa.bbb.iii
end
