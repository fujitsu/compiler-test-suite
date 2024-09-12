program main
type con
    integer (kind=8) :: i
    class(*), pointer :: ulimClassPtr
end type

type(con) :: objCon1
type(con) :: objCon2
type(con) :: objCon3
type(con) :: objCon4
type(con) :: objCon5
type(con) :: objCon6

integer, target :: tar
integer, target :: tarArr(3)
integer, pointer :: ptr
integer, pointer :: ptrArr(:)


allocate(ptr, ptrArr(3))
tar = 10
tarArr =11
ptr = 12
ptrArr = 13

objCon1 = con(1, tar)
if(associated(objCon1%ulimClassPtr) .EQV. .False.) then
    print*,'Fail1'
else
    print*,'Pass1'
endif

objCon2 = con(2, tarArr(2))
if(associated(objCon2%ulimClassPtr) .EQV. .False.) then
    print*,'Fail2'
else
    print*,'Pass2'
endif

objCon3 = con(3, ptr)
if(associated(objCon3%ulimClassPtr) .EQV. .False.) then
    print*,'Fail3'
else
    print*,'Pass3'
endif

objCon4 = con(4, ptrArr(2))
if(associated(objCon4%ulimClassPtr) .EQV. .False.) then
    print*,'Fail4'
else
    print*,'Pass4'
endif

objCon5 = con(5, funPtr())
if(associated(objCon5%ulimClassPtr) .EQV. .False.) then
    print*,'Fail5'
else
    print*,'Pass5'
endif

call sub(tar)

contains

subroutine sub(a)
integer, target :: a
objCon6 = con(6, a)
if(associated(objCon6%ulimClassPtr) .EQV. .False.) then
    print*,'Fail6'
else
    print*,'Pass6'
endif
end subroutine

function funPtr()
  integer, pointer :: funPtr
  allocate(funPtr)
  funPtr = 1
end function

end program
