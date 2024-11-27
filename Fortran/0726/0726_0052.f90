print *,'pass'
end

function ifun01(ia) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
i=kind(ib)
ip=>ia
end function
function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
i=kind(ib)
ip=>ia
end function
function ifun03(ia,ib) result(ip)
pointer :: ip
integer,target,intent(in) :: ia
integer,target,intent(in) :: ib
i=kind(ib)
ip=>ia
end function
function ifun04(ia,ib) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
integer,target,intent(in) :: ib(:)
i=kind(ib)
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
type(ty2) ::         bbb1,bbb2(1)
type(ty3),pointer :: ccc1,ccc2(:)
type(ty2),target ::  ddd1,ddd2(1)
type(ty2),pointer :: eee1,eee2(:)
integer p,ppp(1)
parameter (p=1,ppp=1)
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
ipp=>.aaa.1   
ipp=>.aaa.p   
ipp=>.aaa.ppp(1)
end
