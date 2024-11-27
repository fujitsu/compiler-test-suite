print *,'pass'
end

function ifun01(ib,ia) result(ip)
pointer :: ip
integer,intent(in) :: ia
integer,intent(in) :: ib
j=kind(ib)
ip=ia
end function
function ifun02(ib,ia) result(ip)
pointer :: ip(:)
integer,intent(in) :: ia(:)
integer,intent(in) :: ib(:)
j=kind(ib)
ip=ia
end function

subroutine test01()
interface operator(.aaa.)
function ifun01(ib,ia) result(ip)
pointer :: ip
integer,intent(in) :: ia
integer,intent(in) :: ib
end function
end interface
interface operator(.bbb.)
function ifun02(ib,ia) result(ip)
pointer :: ip(:)
integer,intent(in) :: ia(:)
integer,intent(in) :: ib(:)
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
ipp=>iii.aaa.iaa
ipp=>iii.aaa.ibb(1)
ipp=>iii.aaa.aaa1%iaa
ipp=>iii.aaa.bbb1%iaa
ipp=>iii.aaa.ccc1%iaa
ipp=>iii.aaa.ddd1%iaa
ipp=>iii.aaa.eee1%iaa
ipp=>iii.aaa.aaa2(1)%iaa
ipp=>iii.aaa.bbb2(1)%iaa
ipp=>iii.aaa.ccc2(1)%iaa
ipp=>iii.aaa.ddd2(1)%iaa
ipp=>iii.aaa.eee2(1)%iaa
end

subroutine test02()
interface operator(.aaa.)
function ifun01(ib,ia) result(ip)
pointer :: ip
integer,intent(in) :: ia
integer,intent(in) :: ib
end function
end interface
interface operator(.bbb.)
function ifun02(ib,ia) result(ip)
pointer :: ip(:)
integer,intent(in) :: ia(:)
integer,intent(in) :: ib(:)
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
ipp=>iii.aaa.aaa1%ibb(1)
ipp=>iii.aaa.bbb1%ibb(1)
ipp=>iii.aaa.ccc1%ibb(1)
ipp=>iii.aaa.ddd1%ibb(1)
ipp=>iii.aaa.eee1%ibb(1)
ipp=>iii.aaa.aaa2(1)%ibb(1)
ipp=>iii.aaa.bbb2(1)%ibb(1)
ipp=>iii.aaa.ccc2(1)%ibb(1)
ipp=>iii.aaa.ddd2(1)%ibb(1)
ipp=>iii.aaa.eee2(1)%ibb(1)

end

subroutine test03()
interface operator(.aaa.)
function ifun01(ib,ia) result(ip)
pointer :: ip
integer,intent(in) :: ia
integer,intent(in) :: ib
end function
end interface
interface operator(.bbb.)
function ifun02(ib,ia) result(ip)
pointer :: ip(:)
integer,intent(in) :: ia(:)
integer,intent(in) :: ib(:)
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
izz=>iii.bbb.ibb(1:1)
izz=>iii.bbb.aaa1%ibb(1:1)
izz=>iii.bbb.bbb1%ibb(1:1)
izz=>iii.bbb.ccc1%ibb(1:1)
izz=>iii.bbb.ddd1%ibb(1:1)
izz=>iii.bbb.eee1%ibb(1:1)
izz=>iii.bbb.aaa2(1:1)%iaa
izz=>iii.bbb.ccc2(1:1)%iaa
izz=>iii.bbb.aaa2%iaa
izz=>iii.bbb.ccc2%iaa
end
