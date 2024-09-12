MODULE mod1

TYPE ty
  INTEGER,allocatable :: arr(:)
END TYPE

TYPE,EXTENDS(ty) ::  ty1
  INTEGER,allocatable :: arr2(:)
END TYPE

TYPE,EXTENDS(ty1) :: tty2
  REAL :: rr
END TYPE
END MODULE


PROGRAM MAIN
USE mod1

CLASS(ty1),POINTER :: ptr(:,:)
TYPE(tty2),POINTER :: obj(:,:)
ALLOCATE(tty2::obj(3,4))
do i=1,3
 do j=1,4
  allocate(obj(i,j)%arr(2))
  allocate(obj(i,j)%arr2(2))
 end do
end do

do i=1,3
 do j=1,4
  obj(i,j)%arr=2
  obj(i,j)%arr2=4
 end do
end do

ptr => obj

select type(ptr)
type is(tty2)
do i=1,3
 do j=1,4
IF(SIZEOF(ptr) .EQ. SIZEOF(obj) .and. all(ptr(i,j)%arr2==4) .and.  all(ptr(i,j)%arr==2))THEN
ELSE
  PRINT*,105
END IF
end do
end do
end select

PRINT*,"pass"
END PROGRAM
