program main
type con
    integer (kind=8) :: i
    class(*), pointer :: ulimClassPtr(:)
end type

type(con) :: objCon1
type(con) :: objCon2
type(con) :: objCon3
type(con) :: objCon4

integer, target :: tarArr(3)
integer, pointer :: ptrArr(:)


allocate(ptrArr(3))
tarArr =11
ptrArr = 13

objCon1 = con(2, tarArr)
if(sizeof(objCon1%ulimClassPtr) .NE. 12) then
    print*,'Fail1'
else
    print*,'Pass1'
endif

objCon2 = con(4, ptrArr)
if(sizeof(objCon2%ulimClassPtr(2)) .NE. 4) then
    print*,'Fail2'
else
    print*,'Pass2'
endif

objCon3 = con(5, funPtr())
if(associated(objCon3%ulimClassPtr) .EQV. .False.) then
    print*,'Fail3'
else
    print*,'Pass3'
endif

call sub(tarArr)
if(associated(objCon4%ulimClassPtr) .EQV. .False.) then
    print*,'Fail4'
else
    print*,'Pass4'
endif

contains

subroutine sub(a)
integer, target :: a(3)
objCon4 = con(6, a)
end subroutine

function funPtr()
  integer, pointer :: funPtr(:)
  allocate(funPtr(3))
  funPtr = 1
end function

end program
