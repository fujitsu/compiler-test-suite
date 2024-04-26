print *,'pass'
end

subroutine test08()
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
type(ty3),pointer :: ccc1,ccc2(:)
integer p(1)
parameter (p=1)
allocate(ccc2(1))

izz=>.bbb.ccc2(1)%ibb(p)
end

function ifun02(ia) result(ip)
pointer :: ip(:)
integer,target,intent(in) :: ia(:)
end function
