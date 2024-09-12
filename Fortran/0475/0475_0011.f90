MODULE mod1
IMPLICIT NONE


TYPE ty
  INTEGER,pointer :: arr(:)
END TYPE
TYPE,EXTENDS(ty) ::  ty1
  INTEGER,pointer :: arr2(:)
END TYPE

END MODULE


PROGRAM MAIN
USE mod1
IMPLICIT NONE

CLASS(ty),allocatable :: ptr
TYPE(ty1),POINTER :: obj

ALLOCATE(ty1::obj)
 ALLOCATE(obj%arr(4))
 ALLOCATE(obj%arr2(13))

obj%arr=2
obj%arr2=4

ptr = obj

select type(ptr)
type is(ty)
 print*,201
type is(ty1)
 IF(SIZEOF(ptr) .EQ. SIZEOF(obj) .and. all(ptr%arr2==4) .and. all(ptr%arr==2))THEN
  PRINT*,"pass"
 ELSE
  PRINT*,105
 END IF
end select

END PROGRAM

