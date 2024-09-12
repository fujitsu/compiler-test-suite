MODULE m1
IMPLICIT NONE
    TYPE ty
        INTEGER :: i1
        REAL :: r1
        PROCEDURE(getData),POINTER,NOPASS::ptr=>NULL()
      CONTAINS
        PROCEDURE, PASS,PUBLIC :: init
        PROCEDURE, NOPASS :: check => getData
    END TYPE

    TYPE,EXTENDS(ty)::ty1
      INTEGER::i2
    END TYPE

CONTAINS
    ELEMENTAL SUBROUTINE init(this,num)
        class(ty),INTENT(INOUT) :: this
        INTEGER ,INTENT(INOUT) :: num
        this%i1 = num
    END SUBROUTINE
    INTEGER FUNCTION getData(this)
        class(ty) :: this
        getData = this%i1
    END FUNCTION
END MODULE

PROGRAM MAIN
USE m1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: obj(:,:)
CLASS(*),ALLOCATABLE :: obj2(:,:)
INTEGER :: ii(2,2),jj1,jj2
ii = RESHAPE([6,7,8,9],[2,2])
ALLOCATE(obj,obj2,SOURCE = RESHAPE([ty(1,1.5), ty(2,2.5), ty(3,3.5), ty(4,4.5)] ,[2,2] ))
SELECT TYPE(obj)
TYPE IS(CHARACTER(*))
  print*,201
TYPE IS(ty)
  obj(1,2)%ptr=>getData
  CALL obj%init(ii)
   jj1=obj(1,2)%ptr(obj(1,2))
   if(obj(1,2)%check(obj(1,2)).ne. ii(1,2))print*,101
   if(obj(2,1)%check(obj(2,1)).ne. ii(2,1))print*,102
   if(obj(1,2)%r1 .ne. 3.5)print*,103
   if(jj1 .ne. 8)print*,104
CLASS DEFAULT
   print*,203
END SELECT

SELECT TYPE(obj2)
TYPE IS(CHARACTER(*))
  print*,202
TYPE IS(ty)
  obj2(1,2)%ptr=>getData
  CALL obj2%init(ii)
   jj2=obj2(1,2)%ptr(obj2(1,2))
   if(obj2(1,2)%check(obj2(1,2)).ne. ii(1,2))print*,105
   if(obj2(2,1)%check(obj2(2,1)).ne. ii(2,1))print*,106
   if(obj2(1,2)%r1 .ne. 3.5)print*,107
   if(jj2 .ne. 8)print*,108
CLASS DEFAULT
   print*,204
END SELECT
   PRINT*,"pass"
END PROGRAM
