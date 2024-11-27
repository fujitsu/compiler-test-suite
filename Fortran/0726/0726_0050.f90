call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
print *,'pass'
end

function ifun01(ia) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
ip=>ia
end function
function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
ip=>ia
end function

subroutine test01()
interface operator(.aaa.)
function ifun01(ia) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
end function
end interface
interface operator(.bbb.)
function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
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
ipp=>.aaa.iaa
ipp=>.aaa.ibb(1)
ipp=>.aaa.aaa1%iaa
ipp=>.aaa.bbb1%iaa
ipp=>.aaa.ccc1%iaa
ipp=>.aaa.ddd1%iaa
ipp=>.aaa.eee1%iaa
ipp=>.aaa.aaa2(1)%iaa
ipp=>.aaa.bbb2(1)%iaa
ipp=>.aaa.ccc2(1)%iaa
ipp=>.aaa.ddd2(1)%iaa
ipp=>.aaa.eee2(1)%iaa
end

subroutine test02()
interface operator(.aaa.)
function ifun01(ia) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
end function
end interface
interface operator(.bbb.)
function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
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
ipp=>.aaa.aaa1%ibb(1)
ipp=>.aaa.bbb1%ibb(1)
ipp=>.aaa.ccc1%ibb(1)
ipp=>.aaa.ddd1%ibb(1)
ipp=>.aaa.eee1%ibb(1)
ipp=>.aaa.aaa2(1)%ibb(1)
ipp=>.aaa.bbb2(1)%ibb(1)
ipp=>.aaa.ccc2(1)%ibb(1)
ipp=>.aaa.ddd2(1)%ibb(1)
ipp=>.aaa.eee2(1)%ibb(1)

end

subroutine test03()
interface operator(.aaa.)
function ifun01(ia) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
end function
end interface
interface operator(.bbb.)
function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
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
izz=>.bbb.ibb(1:1)
izz=>.bbb.aaa1%ibb(1:1)
izz=>.bbb.bbb1%ibb(1:1)
izz=>.bbb.ccc1%ibb(1:1)
izz=>.bbb.ddd1%ibb(1:1)
izz=>.bbb.eee1%ibb(1:1)
izz=>.bbb.aaa2(1:1)%iaa
izz=>.bbb.ccc2(1:1)%iaa
izz=>.bbb.aaa2%iaa
izz=>.bbb.ccc2%iaa
end

subroutine test04()
interface operator(.aaa.)
function ifun01(ia) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
end function
end interface
interface operator(.bbb.)
function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
end function
end interface
pointer :: izz(:)
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
type(ty1),target ::  aaa2(1)
type(ty2) ::         bbb1,bbb2(1)
type(ty3),pointer :: ccc1,ccc2(:)
type(ty2),target ::  ddd1,ddd2(1)
type(ty2),pointer :: eee1,eee2(:)
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
izz=>.bbb.aaa2(1)%ibb(1:1)
izz=>.bbb.bbb2(1)%ibb(1:1)
izz=>.bbb.ccc2(1)%ibb(1:1)
izz=>.bbb.ddd2(1)%ibb(1:1)
izz=>.bbb.eee2(1)%ibb(1:1)
end
subroutine test05()
interface operator(.aaa.)
function ifun01(ia) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
end function
end interface
interface operator(.bbb.)
function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
end function
end interface
pointer :: izz(:)
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
type(ty1),target ::  aaa2(1)
type(ty2) ::         bbb1,bbb2(1)
type(ty3),pointer :: ccc1,ccc2(:)
type(ty2),target ::  ddd1,ddd2(1)
type(ty2),pointer :: eee1,eee2(:)
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
izz=>.bbb.aaa2(1:1)%ibb(1)
izz=>.bbb.ccc2(1:1)%ibb(1)
end
subroutine test06()
interface operator(.aaa.)
function ifun01(ia) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
end function
end interface
interface operator(.bbb.)
function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
end function
end interface
pointer :: izz(:)
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
type(ty1),target ::  aaa2(1)
type(ty2) ::         bbb1,bbb2(1)
type(ty3),pointer :: ccc1,ccc2(:)
type(ty2),target ::  ddd1,ddd2(1)
type(ty2),pointer :: eee1,eee2(:)
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
izz=>.bbb.aaa2(1)%ibb
izz=>.bbb.bbb2(1)%ibb
izz=>.bbb.ccc2(1)%ibb
izz=>.bbb.ddd2(1)%ibb
izz=>.bbb.eee2(1)%ibb
end
subroutine test07()
interface operator(.aaa.)
function ifun01(ia) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
end function
end interface
interface operator(.bbb.)
function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
end function
end interface
pointer :: izz(:)
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
type(ty1),target ::  aaa2(1)
type(ty2) ::         bbb1,bbb2(1)
type(ty3),pointer :: ccc1,ccc2(:)
type(ty2),target ::  ddd1,ddd2(1)
type(ty2),pointer :: eee1,eee2(:)
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
izz=>.bbb.aaa2%ibb(1)
izz=>.bbb.ccc2%ibb(1)
end
